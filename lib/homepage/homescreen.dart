import 'package:flutter/material.dart';
import 'buttoncontent.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import '../dashboard.dart';
import './menubutton.dart';
import '../ExpDate/exp_screen.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderDrawer(
        //key: _key,
        appBar: SliderAppBar(
          drawerIconSize: 30,
          isTitleCenter: true,
          appBarColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: Text(
              "HOME",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'montessarat',
              ),
            ),
          ),
          appBarHeight: 90,
          //appBarPadding: EdgeInsets.all(10),
        ),
        slider: dashboard(),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              menubutton(
                "EXPIRY DATE TRACKER",
                "assets/images/medicine (1).png",
                ExpScreen(),
              ),
              menubutton(
                "GROCERY TRACKER",
                "assets/images/grocery (1).png",
                ExpScreen(),
              ),
              menubutton(
                "         RECIPES",
                "assets/images/cooking.png",
                ExpScreen(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
