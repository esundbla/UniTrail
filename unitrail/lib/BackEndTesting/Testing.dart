import 'package:flutter/material.dart';
import 'package:unitrail/BackEndTesting/crud.dart';
import 'components/rounded_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:search_choices/search_choices.dart';

class BackendTesting extends StatefulWidget {
  const BackendTesting({super.key});

  @override
  _BackendTestingState createState() => _BackendTestingState();
}

class _BackendTestingState extends State<BackendTesting> {
  //List<String> buildRooms = [];
  var start;
  var dest;

  @override
  Widget build(BuildContext context) {
    Future<List<DropdownMenuItem<String>>> readData() async {
      CollectionReference buildings =
          FirebaseFirestore.instance.collection("Buildings");
      Future<List<DropdownMenuItem<String>>> db_call() async {
        var buildSnap = await buildings.get();
        List<DropdownMenuItem<String>> buildRooms = [];
        for (var building in buildSnap.docs) {
          var floorsnap =
              await buildings.doc(building.id).collection("Floors").get();
          for (var floor in floorsnap.docs) {
            //print(floor.id);
            var roomsnap = await buildings
                .doc(building.id)
                .collection("Floors")
                .doc(floor.id)
                .get();
            var data;
            if (roomsnap.exists) {
              data = await roomsnap.data();
            }
            for (var room in data.keys) {
              print(room);
              var toAdd = await (DropdownMenuItem(
                value: building.id + room,
                child: Text(building.id + room),
              ));
              buildRooms.add(toAdd);
            }
          }
        }
        return buildRooms;
      }

      return await db_call();
    }

    Size size = MediaQuery.of(context)
        .size; // This provides the total width and height of our screen
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: size.height * 0.1),
            const Text(
              "Testing",
              style: TextStyle(
                color: Color.fromARGB(255, 1, 16, 129),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.1),
            Text("Start Location"),
            FutureBuilder(
                future: readData(),
                builder: (context,
                    AsyncSnapshot<List<DropdownMenuItem<String>>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done &&
                      snapshot.hasData) {
                    var buildRooms = snapshot.data;
                    print(buildRooms);
                    return SearchChoices.single(
                      items: buildRooms,
                      value: start,
                      hint: "Select one",
                      searchHint: "Select one",
                      onChanged: (value) {
                        setState(() {
                          start = value;
                        });
                      },
                      isExpanded: true,
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                }),
            Text("Destination"),
            FutureBuilder(
                future: readData(),
                builder: (context,
                    AsyncSnapshot<List<DropdownMenuItem<String>>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done &&
                      snapshot.hasData) {
                    var buildRooms = snapshot.data;
                    print(buildRooms);
                    return SearchChoices.single(
                      items: buildRooms,
                      value: dest,
                      hint: "Select one",
                      searchHint: "Select one",
                      onChanged: (value) {
                        setState(() {
                          dest = value;
                        });
                      },
                      isExpanded: true,
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                }),
            RoundedButton(
              text: "CRUD",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const Crud();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
