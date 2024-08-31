import 'package:flutter/material.dart';
import '../../config/assets_path.dart';
import '../../web_page_links.dart';
import '../buttons/primary_button.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoSectionMobile extends StatelessWidget {
  const InfoSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Image.asset(
            ImagePath.myPic,
            width: 300,
            height: 300,
          ),
          const SizedBox(height: 20,),
          Text(
            "Hello I'm Harsh Kumar\nApp Developer & Final Year Student",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 5,),
          Text(
            "I am Harsh Kumar. I have excellent skills in app development and am a proficient problem solver. Additionally, I am a competitive programmer with knowledge of machine learning.",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              PrimaryButton(
                btnName: "Contact Me",
                onTap: () async {
                  final Uri emailLaunch = Uri(
                      scheme: 'mailto',
                      path: WebPageLinks.email1
                  );
                  await launchUrl(emailLaunch);
                },
              ),
              const SizedBox(width: 25),
              PrimaryButton(
                btnName: "Get Resume",
                onTap: () async {
                  final Uri resume = Uri.parse(WebPageLinks.resumeLink);
                  await launchUrl(resume);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
