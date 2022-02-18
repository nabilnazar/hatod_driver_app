import 'package:flutter/material.dart';
import 'package:hatod_driver_app/Global/global.dart';
import 'package:hatod_driver_app/splashscreen/splash_screen.dart';

class ProfileTabPage extends StatefulWidget {
  const ProfileTabPage({Key? key}) : super(key: key);

  @override
  _ProfileTabPageState createState() => _ProfileTabPageState();
}

class _ProfileTabPageState extends State<ProfileTabPage> {
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: ElevatedButton(
          onPressed:(){
            fAuth.signOut();
            Navigator.push(
                context, MaterialPageRoute(builder: (c) => const MySplashScreen()));
          },child: Text("Log Out"),
         ),
    );
  }
}
