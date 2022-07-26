import 'package:flutter/material.dart';
import 'package:iaq/model/services_model.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:iaq/utils/styles.dart';
import 'package:iaq/utils/widgets/custom_rounded_button.dart';
import 'package:iaq/utils/widgets/visit_website_button.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
  }

  List<ServicesModel> services = [
    ServicesModel(imageUrl: '', service: 'Mold'),
    ServicesModel(imageUrl: '', service: 'Allergens'),
    ServicesModel(imageUrl: '', service: 'Indoor & outdoor pollutants'),
    ServicesModel(imageUrl: '', service: 'Radon'),
    ServicesModel(imageUrl: '', service: 'Carbon monoxide'),
    ServicesModel(imageUrl: '', service: 'Bacteria'),
    ServicesModel(imageUrl: '', service: 'Formaldehyde'),
    ServicesModel(imageUrl: '', service: 'Asbestos'),
    ServicesModel(imageUrl: '', service: 'Covid'),
    ServicesModel(imageUrl: '', service: 'Air & water intrusion'),
    ServicesModel(imageUrl: '', service: 'Carbon dioxide'),
    ServicesModel(imageUrl: '', service: 'Legionella'),
    ServicesModel(imageUrl: '', service: 'Water quality'),
  ];

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


              SizedBox(
                height: med.height * 0.05,
              ),

              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 40,
                      childAspectRatio: 30,
                      crossAxisCount: 1,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0
                  ),
                  itemCount: services.length,
                  itemBuilder: (context, index){
                    return Container(
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: Text(services[index].service,
                          style: smallHeadingTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              ),


              SizedBox(
                height: med.height * 0.05,
              ),

              CustomRoundedButton(text: 'Call', callBack: (){
                UrlLauncher.launch("tel: +1 870-613-7001");
              },iconData: LineIcons.phone, width: 0.3, borderRadius: 25,  textColor: greenColor),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: CustomRoundedButton(text: 'Book Appointment', callBack: ()async{
                  const url = 'www.IAQTestingCompany.com';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },iconData: LineIcons.calendarWithDayFocus, width: 0.6, borderRadius: 25, textColor: primaryColor, ),
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
