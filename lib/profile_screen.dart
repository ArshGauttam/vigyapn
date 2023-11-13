import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';
import 'package:vigyapn/constant.dart';

class MyProfile extends StatelessWidget {
  static const routeName='/profile';
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
            providers: [
              EmailAuthProvider(),
              GoogleProvider(clientId: GOOGLE_CLIENT_ID)
            ],
            actions: [
              SignedOutAction((context) {
                Navigator.pushReplacementNamed(context, '/sign-in');
              }),
            ],
          );
  }
}