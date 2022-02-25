import 'package:basicchatapp/google_sign_in.dart';
import 'package:basicchatapp/googleauthentication.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          GestureDetector(
            child: Image.asset('asset/image/google.png',
            width: 250,
            ),
            onTap: (){
             GoogleSignInProvider();
            },
          ),
        ],
      ) ,
    );
  }
}