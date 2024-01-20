import 'package:bookly/Features/home/widget/coustom_app_bar.dart';
import 'package:flutter/cupertino.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar()],
    );
  }
}
