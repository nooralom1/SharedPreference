import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sharedpreference/Views/authentication/login/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => const Login()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 35,
          child: Icon(
            Icons.person_sharp,
            color: Colors.blue,
            size: 50,
          ),
        ),
      ),
    );
  }
}
