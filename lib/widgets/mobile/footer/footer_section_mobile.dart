import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../web_page_links.dart';

class FooterSectionMobile extends StatelessWidget {
  const FooterSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Colors.blue,
              width: 3.5
          )
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w/20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Work with us", style: Theme.of(context).textTheme.labelMedium,),
                const SizedBox(height: 4,),
                InkWell(
                    onTap: () async {
                      final Uri emailLaunch = Uri(
                          scheme: 'mailto',
                          path: WebPageLinks.email1
                      );
                      await launchUrl(emailLaunch);
                    },
                    child: Text("hkgupta1601@gmail.com", style: Theme.of(context).textTheme.bodySmall,)
                ),
                InkWell(
                    onTap: () async {
                      final Uri emailLaunch = Uri(
                          scheme: 'mailto',
                          path: WebPageLinks.email2
                      );
                      await launchUrl(emailLaunch);
                    },
                    child: Text("hkgupta1524@gmail.com", style: Theme.of(context).textTheme.bodySmall,)
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Column(
              children: [
                Text("Developer Profiles", style: Theme.of(context).textTheme.labelMedium,),
                const SizedBox(height: 4,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        InkWell(
                            onTap: () async {
                              final Uri url = Uri.parse(WebPageLinks.linkedIn);
                              await launchUrl(url);
                            },
                            child: Text("LinkedIn", style: Theme.of(context).textTheme.bodySmall,)
                        ),
                        InkWell(
                            onTap: () async {
                              final Uri url = Uri.parse(WebPageLinks.github);
                              await launchUrl(url);
                            },
                            child: Text("Github", style: Theme.of(context).textTheme.bodySmall,)
                        ),
                        InkWell(
                            onTap: () async {
                              final Uri url = Uri.parse(WebPageLinks.leetCode);
                              await launchUrl(url);
                            },
                            child: Text("LeetCode", style: Theme.of(context).textTheme.bodySmall,)
                        ),
                        InkWell(
                            onTap: () async {
                              final Uri url = Uri.parse(WebPageLinks.gfg);
                              await launchUrl(url);
                            },
                            child: Text("GFG", style: Theme.of(context).textTheme.bodySmall,)
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Column(
              children: [
                Text("Portfolio", style: Theme.of(context).textTheme.labelMedium,),
                const SizedBox(height: 4,),
                Text("Created By: Harsh Kumar", style: Theme.of(context).textTheme.bodySmall,),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
