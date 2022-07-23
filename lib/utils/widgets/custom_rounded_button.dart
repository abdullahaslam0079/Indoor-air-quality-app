import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:iaq/utils/styles.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class CustomRoundedButton extends StatelessWidget {
  final String text;
  final double width;
  final double borderRadius;
  final IconData iconData;
  Color textColor;
  Color backgroundColor;
  CustomRoundedButton({Key? key, required this.text, required this.width, required this.borderRadius, this.backgroundColor = whiteColor, this.textColor = primaryColor, required this.iconData}) : super(key: key);

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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(iconData, color: textColor, size: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(text,
                  style: bigHeadingTextStyle.copyWith(color: textColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
