import 'package:flutter/material.dart';
import 'package:portfolio/web_page_links.dart';
import 'package:portfolio/widgets/web/experience/project_details.dart';
import 'package:url_launcher/url_launcher.dart';

class JavaKotlinData extends StatelessWidget {
  const JavaKotlinData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Java/Kotlin",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProjectDetails(
                appName: "Food Ordering App",
                subHeading: "Tech Stack: Kotlin, Android Studio, Firebase, Android Location APIs.",
                description: "Solely developed a feature-rich Food Ordering app with seamless ordering, location-based restaurant discovery, and a producer panel for efficient restaurant updates using Kotlin and Firebase.",
                onTap: () async {
                  final Uri url = Uri.parse(WebPageLinks.foodOrdering);
                  await launchUrl(url);
                },
              ),
              ProjectDetails(
                appName: "Disease Predictor",
                subHeading: "Tech Stack: Kotlin, Python, sci-kit-learn, Flask, pickle, NumPy.",
                description: "Independently engineered a Disease Prediction App using Python ML models with 70-80% accuracy, connected via Flask API for a cohesive and responsive user experience.",
                onTap: () async {
                  final Uri url = Uri.parse(WebPageLinks.diseasePredictor);
                  await launchUrl(url);
                },
              ),
              ProjectDetails(
                appName: "Chatting App",
                subHeading: "Tech Stack: Java, XML, Firebase.",
                description: "Crafted a stylish and user-friendly chat app with real-time 1-to-1 communication using Firebase Firestore, ensuring swift message updates and secure email-verified user authentication.",
                onTap: () async {
                  final Uri url = Uri.parse(WebPageLinks.chatting);
                  await launchUrl(url);
                },
              ),
              ProjectDetails(
                appName: "Weather App",
                subHeading: "Tech Stack: Weather API, Kotlin, XML, Location Service.",
                description: "Developed an intuitive weather app with dynamic backgrounds and precise location services, featuring interactive UI enhancements using Kotlin, XML, and Lottie animations.",
                onTap: () async {
                  final Uri url = Uri.parse(WebPageLinks.weather);
                  await launchUrl(url);
                },
              ),
              ProjectDetails(
                appName: "Chat GPT Mobile",
                subHeading: "Tech Stack: Java, OpenAPI, JSON, OkHttp",
                description: "Developed a ChatGPT app using the GPT API in Java, featuring an intuitive and user-friendly interface that enhances accessibility and facilitates effective prompting for seamless interaction.",
                onTap: () async {
                  final Uri url = Uri.parse(WebPageLinks.chatGpt);
                  await launchUrl(url);
                },
              ),
              const SizedBox(height: 25,),
            ],
          ),
        ),
      ],
    );
  }
}
