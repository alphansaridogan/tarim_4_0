import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseAuth _authService = FirebaseAuth.instance;
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  Future<User?> signIn(String email, String password) async {
    var user = await _authService.signInWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }

  SingOut() async {
    return await _authService.signOut();
  }

  Future<User?> createPerson(String nameSurname, String email, String password
     ) async {
    var user = await _authService.createUserWithEmailAndPassword(
        email: email, password: password);

    await _fireStore.collection("Person").doc(user.user!.uid).set(
        {"NameSurname": nameSurname, "email": email, "password": password});
    return user.user;
  }
}
