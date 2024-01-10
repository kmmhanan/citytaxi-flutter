import 'package:ase_taxi/constants/palette.dart';
import 'package:flutter/material.dart';

class CustomGradient {
  static Gradient topBarGradient = LinearGradient(
    colors: [Palette.mainColor10, Palette.mainColor30],
    begin: Alignment.topLeft, //const FractionalOffset(0.0, 0.0),
    end: Alignment.bottomRight, //const FractionalOffset(1.0, 1.0),
    // stops: [0.0, 2.0],
    // tileMode: TileMode.clamp
  );
}
