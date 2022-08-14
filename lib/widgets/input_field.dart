import 'package:flutter/material.dart';
import '../constant/theme.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final Widget suffixIcon;
  final TextEditingController controller;
  final TextInputType type;

  const InputField({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    required this.suffixIcon,
    required this.controller,
    this.type = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhiteGrey,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: type,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: greyTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 16,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
