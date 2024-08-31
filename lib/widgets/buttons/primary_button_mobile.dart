import 'package:flutter/material.dart';
import 'package:portfolio/widgets/hover_widget.dart';

class PrimaryButtonMobile extends StatelessWidget {
  final String btnName;
  final VoidCallback onTap;
  const PrimaryButtonMobile({super.key, required this.btnName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: HoverEffect(
          builder: (isHover) => AnimatedContainer(
              duration: const Duration(seconds: 2),
              padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 7),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      width: 2
                  ),
                  borderRadius: BorderRadius.circular(4),
                  color: isHover? Theme.of(context).colorScheme.primary.withOpacity(0.15): Colors.transparent
              ),
              child: AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 100),
                curve: Curves.easeInOut,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    letterSpacing: isHover? 2: 1.0
                )?? const TextStyle(),
                child: Text(btnName),
              )
          ),
        )
    );
  }
}
