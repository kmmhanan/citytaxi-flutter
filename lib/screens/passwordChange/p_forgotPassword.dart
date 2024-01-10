import 'package:ase_taxi/constants/palette.dart';
import 'package:ase_taxi/screens/passwordChange/linkForgotPassword.dart';
import 'package:ase_taxi/screens/passengerScreens/p_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/custom_text_field.dart';

class PForgotPassword extends StatelessWidget {
  const PForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
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
                    builder: (context) => PLoginPage(),
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
              'Forgot Password',
              style: TextStyle(
                  color: Palette.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 16),
            Text(
              'Submit your email address & we will send you link to reset your password',
              style: TextStyle(
                color: Palette.white,
                fontSize: 13.30,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 25),
            CustomTextField(
                label: 'Email Address', controller: emailController),
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
                      builder: (context) => const LinkForgotPassword(),
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
                'Reset Password',
                style: TextStyle(
                    color: Palette.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
