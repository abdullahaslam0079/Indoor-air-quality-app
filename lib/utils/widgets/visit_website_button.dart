import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iaq/utils/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class VisitWebsiteButton extends StatelessWidget {
  const VisitWebsiteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size med = MediaQuery.of(context).size;
    return SizedBox(
      width: med.width,
      height: med.height*0.07,
      child: ElevatedButton(
        onPressed: () async{
          const url = 'www.IAQTestingCompany.com';
          if (await canLaunch(url)) {
          await launch(url);
          } else {
          throw 'Could not launch $url';
          }
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.grey.shade400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 15.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/webIcon.jpg',
                scale: 20,
                fit: BoxFit.cover,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Website',
                  style: bigHeadingTextStyle.copyWith(color: Colors.black),
                ),
              ),
              const Spacer(),
              const Icon(Icons.arrow_right_alt, color: Colors.black,)
            ],
          ),
        ),
      ),
    );
  }
}
