import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web/experience/project_details.dart';

class FlutterData extends StatelessWidget {
  const FlutterData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Flutter",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProjectDetails(
                  appName: "Hostel Management App",
                  subHeading: "Tech Stack: Flutter, Node.js, MongoDB, REST API, Provider",
                  description: "Developed a high-performance hostel management app with separate student/admin panels, optimized backend, and enhanced UX, reducing data fetch time by 30% and server load by 40%.",
                  onTap: () {},
              ),
              ProjectDetails(
                appName: "Stock Quotes App",
                subHeading: "Tech Stack: Flutter, Firebase, Alpha Vantage API, flutter_bloc.",
                description: "Built a feature-rich stock quotes app with Firebase authentication, stock search, detailed charts, watchlist, and portfolio tracking, providing real-time updates and secure user management.",
                onTap: () {},
              ),
              ProjectDetails(
                appName: "Ecommerce Application",
                subHeading: "Tech Stack: Flutter, Firebase, Stripe, HTTP",
                description: "Engineered a robust eCommerce app with secure Stripe payments, streamlined inventory management, and enhanced UI using Lottie Animations, reducing inventory errors by 30% and payment failures by 40%.",
                onTap: () {},
              ),
              ProjectDetails(
                appName: "News App",
                subHeading: "Tech Stack: Flutter, NewsAPI, Webview flutter.",
                description: "Developed a news application with real-time updates via NewsAPI, optimized for 40% faster content loading using Webview Flutter for a seamless and reliable browsing experience.",
                onTap: () {},
              ),
              ProjectDetails(
                appName: "Tic Tac Toe",
                subHeading: "Tech Stack: Flutter, Dart, Firebase, GetX, Google Sign-In",
                description: "Developed a Tic Tac Toe app featuring offline and multiplayer modes with real-time gameplay, Google Sign-In authentication, and user stats tracking for an engaging and seamless experience.",
                onTap: () {},
              ),
              const SizedBox(height: 25,),
            ],
          ),
        ),

      ],
    );
  }
}
