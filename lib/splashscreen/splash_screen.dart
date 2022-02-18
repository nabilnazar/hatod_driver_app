import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hatod_driver_app/Global/global.dart';
import 'package:hatod_driver_app/authentication/login_screen.dart';
import 'package:hatod_driver_app/authentication/signup_screen.dart';
import 'package:hatod_driver_app/mainScreens/main_screens.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  starTimer() {
    Timer(const Duration(seconds: 3), () async {

      if(await fAuth.currentUser != null)
      {
        currentFirebaseUser = fAuth.currentUser;
        Navigator.push(
            context, MaterialPageRoute(builder: (c)=> const MainScreen()));

      }
      else
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (c)=> const LoginScreen()));
        }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    starTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/photo_2022-02-15_17-01-47.jpg"),

              const SizedBox(height: 20),

              const Text(
                "Hatod Driver App",
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF053BB3),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
