import 'package:flutter/material.dart';
import 'package:hatod_driver_app/authentication/car_info_screen.dart';
import 'package:hatod_driver_app/authentication/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nametextEditingController = TextEditingController();
  TextEditingController emailtextEditingController = TextEditingController();
  TextEditingController phonetextEditingController = TextEditingController();
  TextEditingController passwordtextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              /*  const SizedBox(
                height: 20,
              ),*/
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, right: 20, bottom: 2, left: 20),
                child: Image.asset("images/photo_2022-02-15_17-01-47.jpg"),
              ),
              /*const SizedBox(
                height: 20,
              ),*/
              const Text(
                "Register As A Driver",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A237E)),
              ),
              TextField(
                controller: nametextEditingController,
                style: const TextStyle(color: Color(0xFF1A237E)),
                decoration: const InputDecoration(
                  labelText: "name:",
                  hintText: "Name",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  labelStyle: TextStyle(
                    color: Color(0xFF1A237E),
                    fontSize: 14,
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailtextEditingController,
                style: const TextStyle(color: Color(0xFF1A237E)),
                decoration: const InputDecoration(
                  labelText: "email:",
                  hintText: "email address",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  labelStyle: TextStyle(
                    color: Color(0xFF1A237E),
                    fontSize: 14,
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.phone,
                controller: phonetextEditingController,
                style: const TextStyle(color: Color(0xFF1A237E)),
                decoration: const InputDecoration(
                  labelText: "mobile:",
                  hintText: "mobile number",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  labelStyle: TextStyle(
                    color: Color(0xFF1A237E),
                    fontSize: 14,
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                controller: passwordtextEditingController,
                style: const TextStyle(color: Color(0xFF1A237E)),
                decoration: const InputDecoration(
                  labelText: "password:",
                  hintText: "Password",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  labelStyle: TextStyle(
                    color: Color(0xFF1A237E),
                    fontSize: 14,
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              ElevatedButton(
                onPressed: () {
                  
                  Navigator.push(context, MaterialPageRoute(builder: (c)=> CarInfoSceen()));
                  
                },
                child: const Text(
                  "Create an account",
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF053BB3),
                ),
              ),
              TextButton(
                child: const Text('Already have an account ? Login here',
                  style: TextStyle(
                    color: Color(0xFF1A237E),
                  ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c)=> const LoginScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
