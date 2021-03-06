import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:sushi_app/screens/home/home_screen.dart';
import 'package:sushi_app/screens/login_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth;

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  AuthService(this._firebaseAuth);

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<User?> signIn(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      Get.to(() => const HomeScreen());

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error', e.message.toString());
    }
  }

  Future<User?> signUp(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      Get.to(() => LoginScreen());
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error', e.message.toString());
    }
  }

  Future<void> handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error', e.message.toString());
    }
  }
}
