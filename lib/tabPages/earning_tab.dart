
import 'package:flutter/material.dart';
import 'package:hatod_driver_app/mainScreens/trips_history_screen.dart';
import 'package:provider/provider.dart';

import '../infoHandler/app_info.dart';


class EarningsTabPage extends StatefulWidget {
  const EarningsTabPage({Key? key}) : super(key: key);

  @override
  _EarningsTabPageState createState() => _EarningsTabPageState();
}



class _EarningsTabPageState extends State<EarningsTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [

          //earnings
          Container(
            color: const Color(0xFF053BB3),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 80),
              child: Column(
                children: [

                  const Text(
                    "Your Total Earnings:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 10,),

                  Text(
                    "\$ " + Provider.of<AppInfo>(context, listen: false).driverTotalEarnings,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),
            ),
          ),

          //total number of trips
          ElevatedButton(
              onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (c)=> TripsHistoryScreen()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [

                    Image.asset(
                      "images/car_logo.png",
                      width: 100,
                    ),

                    const SizedBox(
                      width: 6,
                    ),

                    const Text(
                      "Total Trips Completed",
                      style: TextStyle(
                        color: Color(0xFF053BB3),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        child: Text(
                          Provider.of<AppInfo>(context, listen: false).allTripsHistoryInformationList.length.toString(),
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                              color: Color(0xFF000081),
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
          ),

        ],
      ),
    );
  }
}
