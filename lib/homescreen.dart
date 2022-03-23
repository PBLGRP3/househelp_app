import 'package:flutter/material.dart';
import './buttoncontent.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import './dashboard.dart';

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
                Padding(
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
                      "EXPIRY DATE TRACKER",
                      "assets/images/medicine (1).png",
                    ),
                    onPressed: () => {},
                    //splashColor: Colors.redAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
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
                      "GROCERY TRACKER",
                      "assets/images/grocery (1).png",
                    ),
                    onPressed: () => {},
                    //splashColor: Colors.redAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
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
                      "         RECIPES",
                      "assets/images/cooking.png",
                    ),
                    onPressed: () => {},
                    //splashColor: Colors.redAccent,
                  ),
                )
              ],
            ),
          )
          /*appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.green,
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'montessarat',
            fontWeight: FontWeight.bold,
          ),
        )*/

          /* leading: IconButton(
          onPressed: null,
          icon: Icon(Icons.shopping_bag),
        ),*/
          //),
          /*body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
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
                  "EXPIRY DATE TRACKER",
                  "assets/images/medicine (1).png",
                ),
                onPressed: () => {},
                //splashColor: Colors.redAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
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
                  "GROCERY TRACKER",
                  "assets/images/grocery (1).png",
                ),
                onPressed: () => {},
                //splashColor: Colors.redAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
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
                  "         RECIPES",
                  "assets/images/cooking.png",
                ),
                onPressed: () => {},
                //splashColor: Colors.redAccent,
              ),
            )
          ],
        ),
      ),*/
          ),
    );
  }
}
