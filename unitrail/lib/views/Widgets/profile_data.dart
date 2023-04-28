import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileData {
  Future<Map<String, dynamic>> getUserData() async {
    DocumentReference userRef =
        FirebaseFirestore.instance.collection('Users').doc(FirebaseAuth.instance.currentUser?.uid);

    DocumentSnapshot snapshot = await userRef.get();
    if (!snapshot.exists) {
      throw Exception('User not found');
    }

    
    Map<String, dynamic> data = snapshot.data()! as Map<String, dynamic>;
    if (data == null) {
      throw Exception('User data is null');
    }
    return data;
  }
}


    // Map<String, dynamic>? data = snapshot.data() as Map<String, dynamic>?;
    // if (data == null) {
    //   throw Exception('User data is null');
    // }
    // return data;

  // var getUser = await FirebaseFirestore.instance
  //       .collection('Users')
  //       .doc(FirebaseAuth.instance.currentUser?.uid)
  //       .get();