import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/constants.dart';

import '../../utils/open_url.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      // margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2,horizontal: MediaQuery.of(context).size.width*0.05),
      // constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
                vertical: kDefaultPadding,
                horizontal: MediaQuery
                    .of(context)
                    .size
                    .width * 0.05),
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Wrap(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(child: AboutTextWithSign()),
                Container(
                  // width: MediaQuery.of(context).size.width * 0.35,
                  constraints: BoxConstraints(maxWidth: 600, minWidth: 500),
                  width: 300,
                  child: AboutSectionText(
                    text:
                    'To take a challenging role as Mobile Applications Developer in a highly technical company where I could utilize my skills in Problem solving, App design, Analytical Skills and use these skills to produce the most advanced mobile applications. I have a solid background in creating complex mobile applications for iPhone and Android. I can work independently and respect a deadline. I feel comfortable working with a good team of developers. I am passionate about the mobile marketing and have knowledge about.',
                  ),
                ),
                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 3,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width / 3,
                  child: Lottie.asset(
                      'assets/lottie/android.json'),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                vertical: kDefaultPadding,
                horizontal: MediaQuery
                    .of(context)
                    .size
                    .width * 0.05),
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Wrap(
              // mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 3,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width / 3,
                  child: RiveAnimation.asset(
                    'assets/rive/flutter_rive.riv',
                  ),
                ),
                ExperienceCard(numOfExp: "3"),
                Container(
                  width: 300,
                  constraints: BoxConstraints(maxWidth: 600, minWidth: 500),
                  child: AboutSectionText(
                    text:
                    "I have more then 3 years of experience in mobile development. I have developed many applications using REST APIS for many clients. I have experience in Android (native) and Flutter. Work over 20 applications and successfully delivered on time. I have experience with working on different types of applications like POS systems, NFC tags, Social Media Platform, Food Delivery and many more.",
                  ),
                ),
                // Spacer(),

              ],
            ),
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultButton(
                imageSrc: "assets/images/chat.png",
                text: "Lets Chat!",
                press: () {
                  launchMailClient();
                },
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () async {
                  String url = 'https://drive.google.com/file/d/1lHmZ50-hbugQIFnTQ0r7DsrXhhOMKVdi/view';
                  if (await canLaunch(url)) {
                     await launch(url);
                  } else {
                    print("test url3");
                    throw 'Could not launch $url';
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
