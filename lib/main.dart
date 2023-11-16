import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';
import 'package:vigyapn/constant.dart';
import 'package:vigyapn/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:vigyapn/home_screen.dart';
import 'package:vigyapn/login_screen.dart';
import 'package:vigyapn/profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseUIAuth.configureProviders([
    GoogleProvider(clientId: GOOGLE_CLIENT_ID),
  ]);
  runApp(const MyApp());
}
MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: buildMaterialColor(const Color.fromRGBO(255,49,49,1)),
          
         
          appBarTheme: const AppBarTheme(
            
            color: Colors.white, elevation: 1),
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(24)))),
          inputDecorationTheme: InputDecorationTheme(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
        ),
        initialRoute: FirebaseAuth.instance.currentUser == null
            ? LoginScreen.routeName
            : MyProfile.routeName,
        routes: {
          LoginScreen.routeName: (context) => const LoginScreen(),
          MyProfile.routeName: (context) => const MyProfile(),
          HomePageScreen.routeName: (context) => const HomePageScreen(),
        });
  }
}
