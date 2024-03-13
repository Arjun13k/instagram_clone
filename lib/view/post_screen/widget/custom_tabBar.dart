import 'package:flutter/material.dart';
import 'package:instagram_clone/dummyDb.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: DummyDb.gridpost.length,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, mainAxisSpacing: 2, crossAxisSpacing: 2),
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(DummyDb.gridpost[index]),
                fit: BoxFit.cover)),
      ),
    );
  }
}
