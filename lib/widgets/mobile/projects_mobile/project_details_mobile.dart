import 'package:flutter/material.dart';

class ProjectDetailsMobile extends StatelessWidget {
  final String icon;
  final String heading;
  final String subHeading;
  final String details;
  const ProjectDetailsMobile({super.key, required this.icon, required this.heading, required this.subHeading, required this.details});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w/100, vertical: h/50),
      child: Column(
        children: [
          Row(
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
                    height: h/4,
                  ),
                ),
              ),
              SizedBox(width: w/50,),
              SizedBox(
                width: w/2,
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
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 10,),
          Text(
            details,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 14),
          )
        ],
      ),
    );
  }
}
