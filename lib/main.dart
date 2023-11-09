import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:vigyapn/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthenticationPage(),
    );
  }
}

class AuthenticationPage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  AuthenticationPage({super.key});

  void _signInWithGoogle(BuildContext context) async {
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    await _auth.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Authentication Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _signInWithGoogle(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset('assets/google_logo.png', height: 24.0),
                    const SizedBox(width: 16.0),
                    const Text('Sign in with Google',
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'OR',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implement your sign-up logic here
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              child: const Text('Sign Up', style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Implement your forgot password logic here
              },
              child: const Text('Forgot Password?',
                  style: TextStyle(fontSize: 16, color: Colors.blue)),
            ),
          ],
        ),
      ),
    );
  }
}
