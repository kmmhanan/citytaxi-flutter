import 'package:ase_taxi/constants/palette.dart';
import 'package:ase_taxi/screens/driverScreens/d_welcomeScreen.dart';
import 'package:ase_taxi/screens/passengerScreens/p_welcomeScreen.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.mainColor60,
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Palette.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/logo/carlogo.png', height: 100, width: 100),
                Text('CITY TAXI',
                    style: TextStyle(
                        color: Palette.white,
                        fontSize: 18.70,
                        fontWeight: FontWeight.w400)),
                const SizedBox(height: 64),
                Text('Select User',
                    style: TextStyle(
                      color: Palette.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    )),
                const SizedBox(height: 24),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PWelcomeScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.71, -0.70),
                        end: Alignment(-0.71, 0.7),
                        colors: [Palette.mainColor10, Palette.mainColor30],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    child: Text(
                      'Passenger',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Palette.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DWelcomeScreen(),
                          ));
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      decoration: ShapeDecoration(
                        color: Palette.mainColor30,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      child: Text('Driver',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Palette.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                    ))
              ],
            ),
          ),
        ));
  }
}
