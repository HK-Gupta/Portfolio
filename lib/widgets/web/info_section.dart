import 'package:flutter/material.dart';
import 'package:portfolio/config/assets_path.dart';
import 'package:portfolio/web_page_links.dart';
import 'package:portfolio/widgets/buttons/primary_button.dart';
import 'package:url_launcher/url_launcher.dart';


class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w/9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello I'm Harsh Kumar\nApp Developer & Final Year Student",
                  style: Theme.of(context).textTheme.headlineMedium,
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
                      btnName: "Hire Me",
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
          ),
          Column(
            children: [
              Image.asset(
                  ImagePath.myPic,
                width: w/4.5,
                height: w/3,
              ),
              const SizedBox(height: 40,),
            ],
          )
        ],
      ),
    );
  }
}
