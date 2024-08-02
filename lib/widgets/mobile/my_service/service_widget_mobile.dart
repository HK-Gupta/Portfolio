import 'package:flutter/material.dart';

class ServiceWidgetMobile extends StatelessWidget {
  final icon;
  final String title;
  final String desc;
  const ServiceWidgetMobile({super.key, this.icon, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                  width: 1,
                  color: Theme.of(context).colorScheme.primary
              )
          ),
          child: Icon(
            icon,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(height: 10,),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 10,),
        Text(
          desc,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 12
          ),
        )
      ],
    );;
  }
}
