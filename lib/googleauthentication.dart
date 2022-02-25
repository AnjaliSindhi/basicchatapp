import 'package:google_sign_in/google_sign_in.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<UserCredential> signInWithGoogle() async {
  final GoogleSignInAccount? googleuser = await GoogleSignIn().signIn();
  final GoogleSignInAuthentication googleAuth = await googleuser!.authentication;

  final credential = GoogleAuthProvider.credential(
    idToken: googleAuth.idToken,
    accessToken: googleAuth.accessToken,
  );

  
  
  Fluttertoast.showToast(msg: "Account Created");
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
