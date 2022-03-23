import 'package:flutter/material.dart';

class buttoncontent extends StatelessWidget {
  final String heading;
  final String imagepath;
  buttoncontent(this.heading, this.imagepath);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          imagepath,
          width: 90,
          height: 100.8,
        ),
        Text(
          heading,
          style: TextStyle(
            fontFamily: 'montessarat',
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
