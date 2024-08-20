import 'package:flutter/material.dart';

class HobbyDetails extends StatelessWidget {
  final String hobby;
  const HobbyDetails({super.key, required this.hobby});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w/30, vertical: 2),
      child: Row(
        children: [
          Container(
            width: w/70,
            height: w/70,
            margin: EdgeInsets.symmetric(horizontal: 4), // Add some spacing between the containers
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          const SizedBox(width: 5,),
          SizedBox(
            width: w/3,
            child: Text(
                hobby,
                style: Theme.of(context).textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
