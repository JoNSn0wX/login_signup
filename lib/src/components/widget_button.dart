import 'package:flutter/material.dart';
import 'package:login_signup/src/list_food.dart';

// ignore: must_be_immutable
class WidgetButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const WidgetButton({required this.name});
  final name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: SizedBox(
        width: double.infinity,
        height: 53,
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ListViewScreen()));
          },
          child:  Text((name),
              style: const TextStyle(color: Colors.white, fontSize: 15)),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          color: Colors.green,
        ),
      ),
    );
  }
}
