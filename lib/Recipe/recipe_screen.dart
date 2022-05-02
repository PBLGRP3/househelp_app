import 'package:flutter/material.dart';

class recipe_screen extends StatelessWidget {
  //const recipe_screen({Key? key}) : super(key: key);

  var mText;
  var imglink;
  var title;

  recipe_screen(this.mText, this.imglink, this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[50],
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          elevation: 0.0,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset(imglink),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(mText),
                ),
                /*SizedBox(
                    height: 300,
                    width: 600, // 1st set height

                    child: Text(
                      mText,
                      //nText,
                      textScaleFactor: 1.4,
                    )),*/
                // 2nd wrap in FittedBox
              ],
            ),
          ),
        ));
  }
}
