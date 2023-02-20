import 'package:flutter/material.dart';
import 'package:unitrail/BackEndTesting/crud.dart';
import 'package:unitrail/BackEndTesting/read%20data/get_room_number.dart';
import 'components/rounded_button.dart';
import 'components/CustomeSearchDelegate.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BackendTesting extends StatefulWidget {
  const BackendTesting({super.key});

  @override
  _BackendTestingState createState() => _BackendTestingState();
}

class _BackendTestingState extends State<BackendTesting> {
  List<String> buildRooms = [];

  readData() async {
    CollectionReference buildings =
        FirebaseFirestore.instance.collection("Buildings");

    buildings.get().then((snapshot) {
      snapshot.docs.forEach((building) {
        //print(building.id);
        buildings.doc(building.id).collection("Floors").get().then((snap) {
          snap.docs.forEach((floor) {
            //print(floor.id);
            buildings
                .doc(building.id)
                .collection("Floors")
                .doc(floor.id)
                .get()
                .then((rooms) {
              rooms.data()?.keys.forEach((room) {
                //print(room);
                buildRooms.add(building.id + room);
              });
            });
          });
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    readData();
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
            RoundedButton(
                text: "From",
                press: ()  {
                  showSearch(
                      context: context,
                      // delegate to customize the search bar
                      delegate: CustomSearchDelegate(searchTerms: buildRooms));
                }),
            SizedBox(height: size.height * 0.5),
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
