import 'package:flutter/material.dart';
import 'recipe_screen.dart';

class recipe_display extends StatelessWidget {
  //const recipe_display({Key? key}) : super(key: key);
  var recipe_widget;
  var recipe_name;
  var img_link;

  recipe_display(this.recipe_widget, this.recipe_name, this.img_link);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => recipe_widget,
            ),
          );
        },
        //padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30.0,
            ),
            Image.asset(
              img_link,
              // fit: BoxFit.contain,
              height: 200,
              // width: 40,
            ),
            const SizedBox(
              height: 30.0,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                recipe_name,
                textScaleFactor: 1.2,
                style: TextStyle(
                  fontFamily: 'montessarat',
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ));
  }
}
