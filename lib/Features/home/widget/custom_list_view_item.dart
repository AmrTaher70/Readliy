import 'package:bookly/core/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.blue,
              image: const DecorationImage(
                  image: AssetImage(
                    AssetsData.testBook,
                  ),
                  fit: BoxFit.fill))),
    );
  }
}
