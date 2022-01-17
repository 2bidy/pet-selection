// Dis service will provide d functionality to login & signUp. In d future it
// will also hold our current user which we can access at any time in d view
// models. It will also do some basic caching if we require on the local
// preferences & it will handle all d auth functionality within the app

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pet_selection/resources/values/strings.dart';
//import 'package:flutter/foundation.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // I created, so users can Login with Email&Password, but not used in the code
  Future? loginWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      var loginAuthResult = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return loginAuthResult.user; //!= null; // loginAuthResult; //
    } on FirebaseAuthException catch (e) {
      //print('Failed with error code: ${e.code}');
      print(e.message);
    }
  }

  // I created, so users can signUp with Email&Password, but not used in the code
  Future? signUpWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      var signUpAuthResult = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return signUpAuthResult.user != null;
    } on FirebaseAuthException catch (e) {
      //print('Failed with error code: ${e.code}');
      print(e.message);
    }
  }

  // SigningUp with Google. This is used in the code
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  GoogleSignInAccount? _signedInUser;
  GoogleSignInAccount get signedInUser => _signedInUser!;

  Future googleLoginAuth() async {
    try {
      final user = await _googleSignIn.signIn();
      if (user == null) return;
      _signedInUser = user;

      final googleAuth = await user.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      // We are now ready to use the above credential to signIn into firebase
      await _firebaseAuth.signInWithCredential(credential);
      return true;
    } catch (e) {
      print(e.toString());
    }
  }

  // To get the current user that is signedIn
  String? currentUser(String requestedUserData) {
    var user = _firebaseAuth.currentUser;
    if (requestedUserData == name) {
      return user?.displayName;
    }
  }

  // To permit user signOut authentication
  Future googleLogoutAuth() async {
    await _googleSignIn.disconnect();
    _firebaseAuth.signOut();
  }

  // Get the ID of the current user that is signedIn
  String get currentUserID => _firebaseAuth.currentUser!.uid;
}
