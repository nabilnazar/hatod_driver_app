import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hatod_driver_app/Global/global.dart';
import 'package:hatod_driver_app/authentication/login_screen.dart';
import 'package:hatod_driver_app/splashscreen/splash_screen.dart';


class CarInfoSceen extends StatefulWidget {


  @override
  _CarInfoSceenState createState() => _CarInfoSceenState();
}


class _CarInfoSceenState extends State<CarInfoSceen> {

  TextEditingController carmodeltextEditingController = TextEditingController();
  TextEditingController carnumbertextEditingController = TextEditingController();
  TextEditingController carcolorEditingController = TextEditingController();

  List<String> carTypesList = ["hatod-x","hatod-go","bike"];
  String?selectedCarType;

  saveCarInfo(){
    Map driverCarInfoMap=
    {
      "car_color":carcolorEditingController.text.trim(),
      "car_number": carnumbertextEditingController.text.trim(),
      "car_model":carmodeltextEditingController.text.trim(),
      "type":selectedCarType,
    };

    DatabaseReference driversRef =FirebaseDatabase.instance.ref().child("drivers");
    driversRef.child(currentFirebaseUser!.uid).child("car_details").set(driverCarInfoMap);
    
    Fluttertoast.showToast(msg: "car details has saved.Congratulations!!!");
    Navigator.push(context, MaterialPageRoute(builder: (c)=> const MySplashScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children:   [

              const SizedBox(height: 40,),
              Image.asset("images/logo1.png"),
            const SizedBox(height: 40,),

               const Text(
                "Write Car Details",textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  color: Color(0xFF1A237E),
              ),
               ),


              TextField(
                controller: carmodeltextEditingController,
                style: const TextStyle(color: Colors.grey),
                decoration: const InputDecoration(
                  labelText: "Car Model:",
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
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
              TextField(

                controller: carnumbertextEditingController,
                style: const TextStyle(color: Colors.grey),
                decoration: const InputDecoration(
                  labelText: "Car Number:",
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
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
              TextField(

                controller:carcolorEditingController,
                style: const TextStyle(color: Colors.grey),
                decoration: const InputDecoration(
                  labelText: "Car Color:",
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
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),

              const SizedBox(height: 20,),
              
              DropdownButton(
                borderRadius: BorderRadius.circular(8),
                hint: const Text('Please choose a car type',
                  style: TextStyle(
                    fontSize:14,
                      color: Color(0xFF1A237E),
                  ),
              ),
                value: selectedCarType,
                onChanged: (newValue)
                {
                  setState(() {
                    selectedCarType = newValue.toString();
                  });
                },

                items: carTypesList.map((car){
                  return DropdownMenuItem(child: Text(
                    car,
                    style: const TextStyle( color: Color(0xFF1A237E),),
                  ),
                    value: car,
                  );
                }).toList(),
              ),


              const SizedBox(
                height: 20,
              ),

              ElevatedButton(
                onPressed: () {

                  if(carcolorEditingController.text.isNotEmpty && carnumbertextEditingController.text.isNotEmpty&&carmodeltextEditingController.text.isNotEmpty&&selectedCarType!=null)
                  {
                    saveCarInfo();
                  }

                },
                child: const Text(
                  "Save now",
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF053BB3),
                ),
              ),

            ],




          ),
        ),
      ),

    );


  }
}
