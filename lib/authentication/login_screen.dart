import 'package:flutter/material.dart';
import 'package:hatod_driver_app/authentication/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{

  @override
  Widget build(BuildContext context) {

    TextEditingController emailtextEditingController = TextEditingController();
    TextEditingController passwordtextEditingController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset("images/photo_2022-02-15_17-01-47.jpg"),
              ),
              const Text(
                "Login As A Driver",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A237E)),
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

                //  Navigator.push(context, MaterialPageRoute(builder: (c)=> CarInfoSceen()));

                },
                child: const Text(
                  "Login",
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF053BB3),
                ),
              ),
              
              TextButton(
                child: const Text('Do not have an account? Signup here',
                  style: TextStyle(
                  color: Color(0xFF1A237E),
                ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c)=> const SignUpScreen()));
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
