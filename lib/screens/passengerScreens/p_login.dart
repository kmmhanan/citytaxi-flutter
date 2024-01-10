import 'package:ase_taxi/constants/palette.dart';
import 'package:ase_taxi/screens/passengerScreens/p_HomePage/p_homePage.dart';
import 'package:ase_taxi/screens/passwordChange/p_forgotPassword.dart';
import 'package:ase_taxi/screens/passengerScreens/p_signup.dart';
import 'package:ase_taxi/screens/passengerScreens/p_welcome_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/customTextFieldWidget.dart';

class PLoginPage extends StatefulWidget {
  const PLoginPage({super.key});

  @override
  State<PLoginPage> createState() => _PLoginPageState();
}

class _PLoginPageState extends State<PLoginPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Palette.mainColor60,
      appBar: AppBar(
        backgroundColor: Palette.mainColor60,
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: Palette.white),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PWelcomeScreen(),
                  ));
            }),
        title: Text('Back', style: TextStyle(color: Palette.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Text(
              'Login',
              style: TextStyle(
                  color: Palette.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 25),
            CustomTextField(
                label: 'Email Address', controller: emailController),
            const SizedBox(height: 8),
            CustomTextField(label: 'Password', controller: passwordController),
            const SizedBox(height: 14),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PForgotPassword(),
                      ));
                },
                child: Text(
                  'Forgot Password ?',
                  style: TextStyle(
                      color: Palette.white,
                      fontSize: 13.30,
                      fontWeight: FontWeight.w400),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PHomePage(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                backgroundColor: Palette.white,
                fixedSize: const Size(343, 56),
                elevation: 0,
              ),
              child: Text(
                'LOGIN',
                style: TextStyle(
                    color: Palette.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('DON’T HAVE AN ACCOUNT?   ',
                    style: TextStyle(
                        color: Palette.white,
                        fontSize: 13.30,
                        fontWeight: FontWeight.w400)),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PSignUpPage(),
                        ));
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        color: Palette.mainColor30,
                        fontSize: 13.30,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
