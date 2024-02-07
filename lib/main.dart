import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'features/presentation/pages/app/splashscreen.dart';
import 'features/presentation/pages/home_page.dart';
import 'features/presentation/pages/loginpage.dart';
import 'features/presentation/pages/sign_up_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(options: FirebaseOptions(
        apiKey: "AIzaSyD5pnoYXwdmVJsq6Drb1L1P9N2H29dVukc",
        appId: "1:848396253766:web:5b2c3b2488d3121034e847",
        messagingSenderId: "848396253766",
        projectId: "newproject-6c1d5"));
  }else {
    await Firebase.initializeApp();
  }


  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Firebase',
        routes: {
          '/' : (context) => SplashScreen(
            child: LoginPage(),
          ),
          '/login' : (context) => LoginPage(),
          '/signUp' : (context) => SignUpPage(),
          '/home' : (context) => HomePage(),



        }

    );

  }
}