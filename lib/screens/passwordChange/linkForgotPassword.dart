import 'package:ase_taxi/constants/palette.dart';
import 'package:ase_taxi/screens/passwordChange/resetPasswordPage.dart';
import 'package:flutter/material.dart';

class LinkForgotPassword extends StatefulWidget {
  const LinkForgotPassword({super.key});

  @override
  State<LinkForgotPassword> createState() => _LinkForgotPasswordState();
}

class _LinkForgotPasswordState extends State<LinkForgotPassword> {
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 3500), () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const ResetPassword()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.mainColor60,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Palette.mainColor60,
          elevation: 0,
          title: Text(
            'Forgot Password',
            style: TextStyle(
                color: Palette.white,
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
        ),
        body: Center(
          child: Text(
            'We’ve sent you an email with a link',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Palette.white,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ));
  }
}
