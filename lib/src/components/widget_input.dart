import 'package:flutter/material.dart';

class WidgetInput extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const WidgetInput({required this.name, required this.obscureText, required this.iconData});
  final String name;
  final bool obscureText;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 18,
      shadowColor: Colors.grey.shade50,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            prefixIcon: Icon(iconData),
            fillColor: Colors.white,
            hintText: name,
            filled: true,
          )),
    );
  }
}
