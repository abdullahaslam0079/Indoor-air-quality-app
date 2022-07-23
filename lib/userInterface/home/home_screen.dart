import 'package:flutter/material.dart';
import 'package:iaq/utils/styles.dart';
import 'package:iaq/utils/widgets/custom_rounded_button.dart';
import 'package:iaq/utils/widgets/visit_website_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size med = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SizedBox(
        height: med.height,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: med.height * 0.1,
              ),
              Text('IAQ Testing Company',
                style: headingTextStyleWhite,
              ),

              const Spacer(),

              CustomRoundedButton(text: 'Call', width: 0.3, borderRadius: 25,  textColor: greenColor),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: CustomRoundedButton(text: 'Book Appointment', width: 0.6, borderRadius: 25, textColor: primaryColor, ),
              ),

              const Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: VisitWebsiteButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
