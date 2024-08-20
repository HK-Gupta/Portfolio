import 'package:flutter/material.dart';
import 'package:portfolio/config/assets_path.dart';

class ProjectDetails extends StatelessWidget {
  final String icon;
  final String heading;
  final String subHeading;
  final String details;
  const ProjectDetails({super.key, required this.icon, required this.heading, required this.subHeading, required this.details});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w/200, vertical: h/20),
      child: SizedBox(
        height: h/1.7,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.blueAccent,
                  width: 4,
                )
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  icon,
                  height: h/2,
                ),
              ),
            ),
            SizedBox(width: w/100,),
            SizedBox(
              width: w/5.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    subHeading,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.white),
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    details,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 15),
                    maxLines: 14,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
