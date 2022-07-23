import 'package:flutter/material.dart';
import 'package:iaq/utils/styles.dart';

class CustomRoundedButton extends StatelessWidget {
  final String text;
  final double width;
  final double borderRadius;
  Color textColor;
  Color backgroundColor;
  CustomRoundedButton({Key? key, required this.text, required this.width, required this.borderRadius, this.backgroundColor = whiteColor, this.textColor = primaryColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size med = MediaQuery.of(context).size;
    return SizedBox(
      width: med.width,
      height: med.height*0.07,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.grey.shade400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          elevation: 15.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(text,
            style: bigHeadingTextStyle.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
