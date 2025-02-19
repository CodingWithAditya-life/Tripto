import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tripto/features/authentication/onboarding/onboarding.dart';
import 'package:tripto/features/authentication/onboarding/tripto_splash.dart';
import 'package:tripto/features/authentication/screens/home/home_screen.dart';
import 'package:tripto/firebase_options.dart';
import 'package:tripto/provider/auth_provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Provider.debugCheckInvalidValueType=null;
  runApp( MultiProvider(providers: [Provider(create: (context) => AuthController(),)],
  child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TripTo',
      home: TriptoSplash(),
    );
  }
}
