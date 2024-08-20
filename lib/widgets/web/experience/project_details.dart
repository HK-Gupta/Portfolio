import 'package:flutter/material.dart';

class ProjectDetails extends StatelessWidget {
  final String appName;
  final String subHeading;
  final String description;
  final VoidCallback onTap;
  const ProjectDetails({super.key, required this.appName, required this.subHeading, required this.description, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(appName),
            InkWell(
              onTap: onTap,
              child: const Text(
                  "Github Link",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue
                  ),
              ),
            )
          ],
        ),
        const SizedBox(height: 2,),
        Text(subHeading, style: Theme.of(context).textTheme.labelMedium,),
        Text(
          description,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(height: 25,),
      ],
    );
  }
}
