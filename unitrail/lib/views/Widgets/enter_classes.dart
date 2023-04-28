import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:unitrail/views/Widgets/my_button.dart';

class EnterClasses extends StatefulWidget with PreferredSizeWidget {
  
  @override
  State<EnterClasses> createState() => _EnterClassesState();
  @override
  Size get preferredSize => Size.fromHeight(8.h);
}

class _EnterClassesState extends State<EnterClasses> {
  late TextEditingController crnController = TextEditingController();
  late TextEditingController nameController = TextEditingController();
  late TextEditingController timesController = TextEditingController();
  late TextEditingController dayController = TextEditingController();
  late TextEditingController locattionController = TextEditingController();
  late TextEditingController descriptionController = TextEditingController();
  
  User? currentUser = FirebaseAuth.instance.currentUser;
  late String myId = ' ';

  @override
  void initState(){
    super.initState();
    _loadUserData();

  }
  void _loadUserData() async {
    var user = await FirebaseFirestore.instance.collection("Users").doc(currentUser!.uid).get();
    //Map<String, dynamic> userData = vari as Map<String, dynamic>;
    setState(() {
      myId = user.data()!['uid'];
    });
  }
  late CollectionReference person = FirebaseFirestore.instance.collection("Users").doc(currentUser!.uid).collection("classes");
  Future<void> addClasses(){
    return person.add({
      'crn': crnController.text,
      'name': nameController.text,
      'times': timesController.text,
      'day': dayController.text,
      'location': locattionController.text,
      'description': descriptionController.text
    })
    .then((value) => print("Class added"))
    .catchError((error) => print("Failed to add class: $error"));
  }
  void clear() {
    crnController.clear();
    nameController.clear();
    timesController.clear();
    dayController.clear();
    locattionController.clear();
    descriptionController.clear();
  }
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(shape: CircleBorder(), minimumSize: Size(40, 40), backgroundColor: Color(0xFFA31621)),
      child: const Text("Add"),
      onPressed: (){
        showDialog(
          context: context, 
          builder: (BuildContext context){
            return AlertDialog(
              scrollable: true,
              title: const Text("Add your classes"),
              content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: crnController,
                        decoration: const InputDecoration(
                          labelText: "CRN",
                          icon: Icon(Icons.numbers)
                        ),
                      ),
                      TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          labelText: "Name",
                          icon: Icon(Icons.book)
                        ),
                      ),
                      TextFormField(
                        controller: timesController,
                        decoration: const InputDecoration(
                          labelText: "Times",
                          icon: Icon(Icons.lock_clock_outlined)
                        ),
                      ),
                      TextFormField(
                        controller: dayController,
                        decoration: const InputDecoration(
                          labelText: "Day",
                          icon: Icon(Icons.calendar_today)
                        ),
                        
                      ),
                      TextFormField(
                        controller: locattionController,
                        decoration: const InputDecoration(
                          labelText: "Location",
                          icon: Icon(Icons.home_filled)
                        ),
                        
                      ),
                      TextFormField(
                        controller: descriptionController,
                        decoration: const InputDecoration(
                          labelText: "Description",
                          icon: Icon(Icons.description)
                        ),
                      ), 
                    ],
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: addClasses,
                  child: Text("Add class"),
                ),
                TextButton(
                  onPressed: clear,
                  child: Text("Clear"),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Exit'),
                  child: Text("Exit"),
                )
              ],
            );
          }
        );
      },
    );
  }
}