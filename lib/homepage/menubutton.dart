import 'package:flutter/material.dart';
import 'buttoncontent.dart';

class menubutton extends StatelessWidget {
  final String buttontitle;
  final String buttonimage;

  menubutton(this.buttontitle, this.buttonimage);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        height: 150.0,
        minWidth: 70.0,
        color: Colors.lightGreen,
        textColor: Colors.white,
        child: buttoncontent(
          buttontitle,
          buttonimage,
        ),
        onPressed: () => {},
        splashColor: Colors.lightGreen,
      ),
    );
  }
}
