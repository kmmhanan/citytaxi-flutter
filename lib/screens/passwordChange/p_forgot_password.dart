import 'package:ase_taxi/components/custom_buttons.dart';
import 'package:ase_taxi/constants/palette.dart';
import 'package:ase_taxi/constants/strings.dart';
import 'package:ase_taxi/screens/passwordChange/linkForgotPassword.dart';
import 'package:ase_taxi/screens/passengerScreens/p_login_screen.dart';
import 'package:flutter/material.dart';
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
                builder: (context) => const PLoginScreen(),
              ),
            );
          },
        ),
        title: Text(
          'Back',
          style: TextStyle(color: Palette.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Text('Forgot Password', style: Theme.of(context).textTheme.bold24),
            const SizedBox(height: 16),
            Text(
                'Submit your email address & we will send you link to reset your password',
                style: Theme.of(context).textTheme.normal13),
            const SizedBox(height: 24),
            CustomTextField(
                label: 'Email Address', controller: emailController),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 48),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CTWhiteButton(
              onTapped: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LinkForgotPassword(),
                  ),
                );
              },
              text: 'Reset Password',
            )
          ],
        ),
      ),
    );
  }
}
