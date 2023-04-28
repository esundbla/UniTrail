import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:unitrail/views/home.dart';
import 'package:unitrail/views/login_page.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  Rx<User?>? firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser!.bindStream(_auth.userChanges());
    ever(firebaseUser!, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const Login())
        : Get.offAll(() => HomeScreen());
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (_) {}
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (_) {}
  }

  Future<void> logout() async => await _auth.signOut();
}
