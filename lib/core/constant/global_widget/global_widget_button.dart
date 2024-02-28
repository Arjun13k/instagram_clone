import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constant/color_constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.BottonColors = ColorsConstants.primaryblue,
      this.haveBorder = false,
      this.textColor = ColorsConstants.primarywhite,
      this.onTap});
  final String text;
  final Color BottonColors;
  final bool haveBorder;
  final Color textColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        width: double.infinity,
        decoration: BoxDecoration(
            color: BottonColors,
            borderRadius: BorderRadius.circular(5),
            border: haveBorder == true
                ? Border.all(
                    color: ColorsConstants.primaryBlack.withOpacity(.4))
                : null),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
