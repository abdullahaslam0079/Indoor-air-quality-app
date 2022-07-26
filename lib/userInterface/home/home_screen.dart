import 'package:flutter/material.dart';
import 'package:iaq/model/services_model.dart';
import 'package:iaq/storage/sharedPref.dart';
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
    SharedPrefs().isOnBoarded = true;
    print('This is onborded '+ SharedPrefs().isOnBoarded.toString());
    super.initState();
  }

  List<ServicesModel> services = [
    ServicesModel(webUrl: 'https://www.epa.gov/indoor-air-quality-iaq/biological-pollutants-impact-indoor-air-quality', service: 'Allergens'),
    ServicesModel(webUrl: 'https://www.epa.gov/indoor-air-quality-iaq/asbestos-impact-indoor-air-quality', service: 'Asbestos'),
    ServicesModel(webUrl: 'https://www.epa.gov/indoor-air-quality-iaq/biological-pollutants-impact-indoor-air-quality', service: 'Bacteria'),
    ServicesModel(webUrl: 'https://www.epa.gov/ghgemissions/overview-greenhouse-gases', service: 'Carbon Dioxide'),
    ServicesModel(webUrl: 'https://www.epa.gov/indoor-air-quality-iaq/carbon-monoxides-impact-indoor-air-quality', service: 'Carbon Monoxide'),
    ServicesModel(webUrl: 'https://www.epa.gov/coronavirus/indoor-air-homes-and-coronavirus-covid-19', service: 'Covid'),
    ServicesModel(webUrl: 'https://www.epa.gov/formaldehyde', service: 'Formaldehyde'),
    ServicesModel(webUrl: 'https://www.epa.gov/indoor-air-quality-iaq/indoor-pollutants-and-sources', service: 'Indoor Pollutants'),
    ServicesModel(webUrl: 'https://www.epa.gov/lead', service: 'Lead'),
    ServicesModel(webUrl: 'https://www.epa.gov/ground-water-and-drinking-water/legionella', service: 'Legionella'),
    ServicesModel(webUrl: 'https://www.epa.gov/mold/brief-guide-mold-moisture-and-your-home', service: 'Moisture Intrusion '),
    ServicesModel(webUrl: 'https://www.epa.gov/mold', service: 'Mold'),
    ServicesModel(webUrl: 'https://www.epa.gov/report-environment/outdoor-air-quality', service: 'Outdoor Pollutants'),
    ServicesModel(webUrl: 'https://www.epa.gov/radon', service: 'Radon'),
    ServicesModel(webUrl: '', service: 'Vapor Intrusion'),
    ServicesModel(webUrl: 'https://www.epa.gov/standards-water-body-health/what-are-water-quality-standards#:~:text=Water%20quality%20standards%20(WQS)%20are,will%20be%20protected%20or%20achieved.', service: 'Water Quality'),
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
                height: med.height * 0.02,
              ),
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    // color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/logo.jpg'),
                    )
                  ),
                ),
              ),
              Center(
                child: Text(
                  'IAQ Testing Company',
                  style: headingTextStyleWhite,
                ),
              ),
              SizedBox(
                height: med.height * 0.05,
              ),

              Center(
                child: Text('We Test for',
                  style: bigTitleTextStyleWhite,
                ),
              ),

              SizedBox(
                height: med.height * 0.02,
              ),


              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 40,
                      childAspectRatio: 30,
                      crossAxisCount: 1,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0
                  ),
                  itemCount: services.length,
                  itemBuilder: (context, index){
                    return GestureDetector(
                      onTap: ()async{
                        await launch(services[index].webUrl);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 1,
                              offset: const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(services[index].service,
                            style: smallHeadingTextStyle.copyWith(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(
                height: med.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CustomRoundedButton(
                      text: 'Call',
                      callBack: () {
                        UrlLauncher.launch("tel: +1 870-613-7001");
                      },
                      iconData: LineIcons.phone,
                      width: 0.3,
                      borderRadius: 25,
                      textColor: whiteColor,
                  ),
                  CustomRoundedButton(
                    text: 'Text',
                    callBack: () async{
                      const uri = 'sms:+1 870-613-7001?body=I need service for ';
                      await launch(uri);
                    },
                    iconData: LineIcons.phone,
                    width: 0.3,
                    borderRadius: 25,
                    textColor: whiteColor,
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: CustomRoundedButton(
                  text: 'Book Appointment',
                  callBack: () async {
                    const url = 'http://www.IAQTestingCompany.com';
                    await launch(url);
                  },
                  iconData: LineIcons.calendarWithDayFocus,
                  width: 0.6,
                  borderRadius: 25,
                  textColor: whiteColor,
                ),
              ),
              Center(
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: VisitWebsiteButton(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
