import 'package:ase_taxi/constants/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final int? maxLine;
  final TextInputType? keyBoardType;
  final TextInputAction? textInputAction;
  final String? hintText;
  final FontStyle? fontStyle;

  const CustomTextField({
    required this.label,
    required this.controller,
    this.validator,
    this.inputFormatters,
    this.maxLength,
    this.maxLine,
    this.textInputAction,
    this.keyBoardType,
    this.hintText,
    this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    const inputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: Palette.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 60,
          child: TextFormField(
            controller: controller,
            validator: validator,
            inputFormatters: inputFormatters,
            maxLength: maxLength,
            maxLines: maxLine,
            textInputAction: textInputAction,
            keyboardType: keyBoardType ?? TextInputType.text,
            decoration: InputDecoration(
                border: inputBorder,
                focusedBorder: inputBorder,
                enabledBorder: inputBorder,
                disabledBorder: inputBorder,
                hintText: hintText,
                hintStyle: TextStyle(fontStyle: fontStyle)),
            cursorColor: Palette.white,
            autocorrect: false,
            textCapitalization: TextCapitalization.none,
          ),
        ),
      ],
    );
  }
}
