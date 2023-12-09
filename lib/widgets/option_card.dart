import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({super.key, required this.option, required this.color});
  final String option;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: ListTile(
        title: Text(
          option,
          style: TextStyle(fontSize: 20.0,
          color: color.red != color.green ? neutral : Colors.black,),
        ),
      ),
    );
  }
}
