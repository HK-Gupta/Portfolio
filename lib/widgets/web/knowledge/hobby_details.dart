import 'package:flutter/material.dart';

class HobbyDetails extends StatelessWidget {
  final String hobby;
  const HobbyDetails({super.key, required this.hobby});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 50),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              margin: EdgeInsets.symmetric(horizontal: 4), // Add some spacing between the containers
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
