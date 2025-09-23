
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: BuilsOutlineInputBorder(),
        enabledBorder: BuilsOutlineInputBorder(),
        focusedBorder: BuilsOutlineInputBorder(),
        hintText: "search",
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 24),
        ),
      ),
    );
  }

  OutlineInputBorder BuilsOutlineInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12),
      );
  }
}
