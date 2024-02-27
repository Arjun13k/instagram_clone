import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constant/color_constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.BottonColors = ColorsConstants.primaryblue,
      this.behavior = false,
      this.textColor = ColorsConstants.primarywhite});
  final String text;
  final Color BottonColors;
  final bool behavior;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      width: double.infinity,
      decoration: BoxDecoration(
          color: BottonColors, borderRadius: BorderRadius.circular(5)),
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )),
    );
  }
}
