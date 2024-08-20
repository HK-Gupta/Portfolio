import 'package:flutter/material.dart';
import 'package:portfolio/config/assets_path.dart';
import 'package:portfolio/widgets/mobile/vertical_divider.dart';
import 'package:portfolio/widgets/web/horizontal_divider.dart';
import 'package:portfolio/widgets/web/projects_gif/project_details.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w/25, vertical: 20),
      child: Column(
        children: [
          Text(
            "My Projects",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProjectDetails(
                    icon: GifPath.hostelGif,
                    heading: "Hostel Management",
                    subHeading: "Developed a comprehensive hostel management app with separate student/admin panels and optimized backend performance.",
                    details: "Built a robust hostel management app with distinct panels for 100+ students and admins, enabling issue creation, room availability checks, and room change requests. Utilized REST APIs to reduce data fetch time by 30% and enhanced UX with Provider and Shared Preferences, boosting app performance by 25%. Integrated secure email verification with 6-digit OTPs, and optimized backend efficiency by reducing server load by 40% with auto-shutdown after 15 minutes of inactivity.",
                  ),
                  MyVerticalDivider(width: w/2.4),
                  ProjectDetails(
                    icon: GifPath.tttGif,
                    heading: "Tic Tac Toe App",
                    subHeading: "Developed a Tic Tac Toe app featuring offline and multiplayer modes with real-time gameplay and secure Google Sign-In authentication.",
                    details: "Created a Tic Tac Toe app with both offline solo mode and multiplayer mode, enabling players to connect with friends through auto-generated room keys for real-time gameplay. Implemented user statistics tracking, including win counts and total coins, and integrated Google Sign-In for secure authentication, ensuring a smooth and seamless login experience.",
                  ),
                  MyVerticalDivider(width: w/2.4),
                  ProjectDetails(
                    icon: GifPath.foodGif,
                    heading: "Food Ordering App",
                    subHeading: "Developed a feature-rich Food Ordering app with seamless ordering, location-based services, and a producer panel for restaurant management.",
                    details: "Solely created a comprehensive Food Ordering app featuring two distinct panels for users and producers. The app allows seamless ordering from nearby restaurants, while the producer panel enables efficient restaurant updates. Integrated location-based features to provide users with easy access to nearby dining options.",
                  ),
                ],
              ),
              const SizedBox(width: 10,),
              HorizontalDivider(height: h*2),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProjectDetails(
                    icon: GifPath.stockGif,
                    heading: "Stock Quotes App",
                    subHeading: "Built a stock quotes app with Firebase authentication, stock search, detailed charts, and watchlist/portfolio tracking features.",
                    details: "Developed a stock quotes app featuring secure Firebase authentication, enabling users to create accounts, log in, and manage their profiles. Implemented stock search functionality, allowing users to search by symbols and country, view detailed 1-year charts, and access comprehensive stock information. Added watchlist and portfolio features, enabling users to track up to 50 stocks, monitor current prices and percentage changes, and manage purchases with real-time balance updates.",
                  ),
                  MyVerticalDivider(width: w/2.4),
                  ProjectDetails(
                    icon: GifPath.weatherGif,
                    heading: "Weather App",
                    subHeading: "Developed an interactive weather app with dynamic backgrounds and real-time updates, enhancing user engagement and location accuracy.",
                    details: "Designed a weather app with an engaging UI using Kotlin, XML, and Lottie animations, boosting user engagement by 30%. Implemented dynamic background changes based on weather conditions and time of day, and integrated precise location services to deliver real-time weather updates, improving location accuracy by 25%.",
                  ),
                  MyVerticalDivider(width: w/2.4),
                  ProjectDetails(
                    icon: GifPath.chatGif,
                    heading: "Chatting App",
                    subHeading: "Developed a stylish and user-friendly chat app with real-time messaging and secure email-verified authentication.",
                    details: "Crafted a chat application with a focus on aesthetics and functionality, ensuring a seamless user experience. Leveraged Firebase Firestore for real-time 1-to-1 communication, providing swift message updates and secure user login and registration through email verification.",
                  ),
                ],
              ),

            ],
          ),

        ],
      ),
    );
  }
}
