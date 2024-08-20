import 'package:flutter/material.dart';

class FooterSectionMobile extends StatelessWidget {
  const FooterSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Colors.blue,
              width: 3.5
          )
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w/20, vertical: 10),
        child: Column(
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
            const SizedBox(height: 10,),
            Column(
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
            const SizedBox(height: 10,),
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
