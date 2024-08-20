import 'package:flutter/material.dart';

class HobbyDetailsMobile extends StatelessWidget {
  final String hobby;
  const HobbyDetailsMobile({super.key, required this.hobby});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: w/30),
      child: Row(
        children: [
          Container(
            width: w/25,
            height: w/25,
            margin: const EdgeInsets.symmetric(horizontal: 4), // Add some spacing between the containers
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          const SizedBox(width: 5,),
          Text(hobby)
        ],
      ),
    );
  }
}
