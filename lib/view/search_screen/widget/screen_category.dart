import 'package:flutter/material.dart';

class SearchCategory extends StatelessWidget {
  const SearchCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Icon(Icons.home),
            SizedBox(
              width: 10,
            ),
            Text('data')
          ],
        ),
      ),
    );
  }
}
