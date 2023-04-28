import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../class.dart';
import 'enter_classes.dart';

class ClassSchedule extends StatefulWidget {

  @override
  State<ClassSchedule> createState() => _ClassSchedule();
}

class _ClassSchedule extends State<ClassSchedule> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFfcf7f8)),
          onPressed: () => Navigator.of(context).pop(context),
        ),
        title: Text("Class Details", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color(0xFFa31621),
        elevation: 0,
      ),
      
      body: Stack(
        children: <Widget> [Container(
          margin: const EdgeInsets.only(top: 2),
          child: StreamBuilder<List<Class>>(
            stream: readClasses(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong! $snapshot');
              } else if (snapshot.hasData) {
                final classes = snapshot.data!;
        
                return ListView(
                  children: classes.map(buildClass).toList(),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }
          ),
          
        ),
        Positioned(
                left: 75.w, 
                top: 75.h,
                bottom: 0.5.h,
                child: EnterClasses()
          ),
        ]
      ),
      
    );
  }

  Widget buildClass(Class class_) => Container(
    padding: const EdgeInsets.only(top: 5, bottom: 0),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color.fromARGB(20, 0, 0, 0),
          blurRadius: 8,
          spreadRadius: 1,
          offset: Offset(0, 0),
        ),
      ]
    ),
    child: Card(
      margin: const EdgeInsets.only(top: 0, bottom: 2),
      elevation: 1,
      child: ListTile(
        dense: false,
        isThreeLine: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
        visualDensity: VisualDensity(horizontal: 4, vertical: 0),
        leading: CircleAvatar(
          radius: 50,
          backgroundColor: Colors.red, 
          child: Text(class_.day)
        ),
        title: Text(class_.name),
        subtitle: Text('${class_.crn}\n${class_.times}\n${class_.description}'),
        trailing: Text(class_.location),
      )
    ),
  );

  Stream<List<Class>> readClasses() => FirebaseFirestore.instance
      .collection('Users')
      .doc(FirebaseAuth.instance.currentUser?.uid)
      .collection('classes')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => Class.fromJson(doc.data())).toList());
}
