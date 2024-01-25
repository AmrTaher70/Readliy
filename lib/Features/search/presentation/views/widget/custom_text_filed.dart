import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
            hintText: 'Search',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Opacity(
                opacity: .8,
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 22,
                ),
              ),
            )),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(
        12,
      ),
    );
  }
}
