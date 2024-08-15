import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.blue,
          width: 4
        )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Work with us", style: Theme.of(context).textTheme.labelMedium,),
                const SizedBox(height: 4,),
                Text("hkgupta1601@gmail.com", style: Theme.of(context).textTheme.bodySmall,),
                Text("hkgupta1524@gmail.com", style: Theme.of(context).textTheme.bodySmall,),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Text("Developer Profiles", style: Theme.of(context).textTheme.labelMedium,),
                  const SizedBox(height: 4,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("LinkedIn", style: Theme.of(context).textTheme.bodySmall,),
                          Text("Github", style: Theme.of(context).textTheme.bodySmall,),
                        ],
                      ),
                      Column(
                        children: [
                          Text("LeetCode", style: Theme.of(context).textTheme.bodySmall,),
                          Text("GFG", style: Theme.of(context).textTheme.bodySmall,),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text("Portfolio", style: Theme.of(context).textTheme.labelMedium,),
                const SizedBox(height: 4,),
                Text("Created By: Harsh Kumar", style: Theme.of(context).textTheme.bodySmall,),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
