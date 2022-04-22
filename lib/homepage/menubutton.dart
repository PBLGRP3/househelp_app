import 'package:flutter/material.dart';
import 'buttoncontent.dart';

class menubutton extends StatelessWidget {
  final String buttontitle;
  final String buttonimage;
  Widget menuoption;

  menubutton(
      @required this.buttontitle, @required this.buttonimage, this.menuoption);

  void selectoption(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return menuoption;
        },
      ),
    );
  }

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
        onPressed: () => selectoption(context),
        splashColor: Colors.lightGreen,
      ),
    );
  }
}
