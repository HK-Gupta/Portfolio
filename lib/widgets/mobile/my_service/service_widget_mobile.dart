import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ServiceWidgetMobile extends StatelessWidget {
  final String icon;
  final String title;
  final String desc;
  const ServiceWidgetMobile({super.key, required this.icon, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: w/5,
          height: w/5,
          padding: EdgeInsets.all(w/30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                  width: 1,
                  color: Theme.of(context).colorScheme.primary
              )
          ),
          child: SvgPicture.asset(
            icon,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 5,),
        Text(
          desc,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 14
          ),
        ),
        const SizedBox(height: 25,),
      ],
    );
  }
}
