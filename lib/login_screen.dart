import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';
import 'package:vigyapn/constant.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/sign-in';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      showAuthActionSwitch: true,
      providers: [EmailAuthProvider(),GoogleProvider(clientId: GOOGLE_CLIENT_ID)],
      actions: [
        AuthStateChangeAction<SignedIn>((context, state) {
          Navigator.pushReplacementNamed(context, '/profile');
        }),
      ],
    );
  }
}
