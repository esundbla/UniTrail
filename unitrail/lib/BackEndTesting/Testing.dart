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
  List<String> docIDs = [];

  Future getDocID() async {
    await FirebaseFirestore.instance
        .collection('Buildings')
        .doc("AES")
        .collection("Floors")
        .get()
        .then(
          (value) => value.docs.forEach((element) {
            print(element.reference);
            docIDs.add(element.reference.id);
          }),
        );
  }

  @override
  Widget build(BuildContext context) {
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
                press: () {
                  FirebaseFirestore firestore = FirebaseFirestore.instance;
                  var buildingsRef = firestore.collection("buildings");
                  buildingsRef.get().then((QuerySnapshot snapshot) {
                    snapshot.docs.forEach((doc) {
                      print(doc["Document ID"]);
                    });
                  });
                  showSearch(
                      context: context,
                      // delegate to customize the search bar
                      delegate: CustomSearchDelegate(
                          searchTerms: ["apple", "orange", "french fries"]));
                }),
            SizedBox(height: size.height * 0.5),
            RoundedButton(
              text: "CRUD",
              press: () {
                // DocumentReference buildings = FirebaseFirestore.instance
                //     .collection("Buildings")
                //     .doc("AES")
                //     .collection("Floors")
                //     .doc("2nd");
                // buildings.get().then((snapshot) {
                //   Map<String, dynamic> data =
                //       snapshot.data() as Map<String, dynamic>;
                //   print(data);
                // });
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
            // Expanded(
            //   child: FutureBuilder(
            //     future: getDocID(),
            //     builder: (context, snapshot) {
            //       return ListView.builder(
            //         itemCount: docIDs.length,
            //         itemBuilder: (context, index) {
            //           return ListTile(
            //             title: GetRoomNumber(documentId: docIDs[index]),
            //           );
            //         },
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
