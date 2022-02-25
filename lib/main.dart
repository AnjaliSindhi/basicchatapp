

import 'package:basicchatapp/google_sign_in.dart';
import 'package:basicchatapp/googleauthentication.dart';
import 'package:basicchatapp/signuppage.dart';
import 'package:basicchatapp/trialauthentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider() ,
      child: MaterialApp(
        home:  Scaffold(
          appBar: AppBar(title: const Text('Google Sign in'),
          ),
          body: const SignUpPage()
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}



