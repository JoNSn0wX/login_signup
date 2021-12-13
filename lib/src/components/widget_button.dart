import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetButton extends StatelessWidget {
  WidgetButton({Key? key, required this.colos, required this.name})
      : super(key: key);
  final name;
  Color colos;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () {},
          child: const Text('LOGIN',
              style: TextStyle(color: Colors.white, fontSize: 15)),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          color: Colors.green,
        ),
      ),
    );
  }
}
