import 'package:flutter/material.dart';
import 'package:task5_ecommerce_project/ForLogin/CompleteProfile.dart';
import 'package:task5_ecommerce_project/ForLogin/ForgotPassword.dart';
import 'package:task5_ecommerce_project/ForLogin/LoginPage.dart';
import 'package:task5_ecommerce_project/ForLogin/LoginSuccess.dart';
import 'package:task5_ecommerce_project/ForLogin/RegisterPage.dart';
import 'package:task5_ecommerce_project/ForHomeTabs/HomePage.dart';
import 'package:task5_ecommerce_project/ProductDetails.dart';
import 'package:task5_ecommerce_project/SplashScreen.dart';
import 'package:task5_ecommerce_project/ForLogin/VerificationPage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Mulii",
        primaryColor: Colors.deepOrangeAccent,
        primarySwatch: Colors.orange,
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => const SplashScreen(),
        '/loginSuccess': (context) => const LoginSuccess(),
        '/registerPage': (context) => const RegisterPage(),
        '/completeProfile': (context) => const CompleteProfile(),
        '/forgotPassword': (context) => const ForgotPassword(),
        '/verification': (context) => const VerificationPage(),
        '/LoginPage': (context) => const LoginPage(),
        '/HomePage': (context) => const HomePage(),
        '/productDetails': (context) => const ProductDetails(),
      },
      debugShowCheckedModeBanner: false,
      //home: const RegisterPage(),
    );
  }
}


