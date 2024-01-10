import 'package:ase_taxi/components/custom_buttons.dart';
import 'package:ase_taxi/constants/palette.dart';
import 'package:ase_taxi/constants/strings.dart';
import 'package:ase_taxi/screens/passengerScreens/p_HomePage/p_homePage.dart';
import 'package:ase_taxi/screens/passwordChange/p_forgot_password.dart';
import 'package:ase_taxi/screens/passengerScreens/p_signup_screen.dart';
import 'package:ase_taxi/screens/passengerScreens/p_welcome_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';

class PLoginScreen extends StatefulWidget {
  const PLoginScreen({super.key});

  @override
  State<PLoginScreen> createState() => _PLoginScreenState();
}

class _PLoginScreenState extends State<PLoginScreen> {
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
                    builder: (context) => const PWelcomeScreen(),
                  ));
            }),
        title: Text('Back', style: TextStyle(color: Palette.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Text('Login', style: Theme.of(context).textTheme.bold24),
            const SizedBox(height: 24),
            CustomTextField(
              label: 'Email Address',
              controller: emailController,
            ),
            const SizedBox(height: 8),
            CustomTextField(
              label: 'Password',
              controller: passwordController,
            ),
            const SizedBox(height: 24),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PForgotPassword(),
                      ));
                },
                child: Text('Forgot Password ?',
                    style: Theme.of(context).textTheme.bold13),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CTWhiteButton(
                onTapped: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PHomePage(),
                    ),
                  );
                },
                text: 'LOGIN'),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'DON’T HAVE AN ACCOUNT?   ',
                  style: Theme.of(context).textTheme.normal13,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PSignUpScreen(),
                      ),
                    );
                  },
                  child: Text('SIGN UP',
                      style: Theme.of(context).textTheme.bold13),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
