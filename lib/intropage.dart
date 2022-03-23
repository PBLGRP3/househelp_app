import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import './homescreen.dart';

class introPage extends StatefulWidget {
  @override
  _introPageState createState() => _introPageState();
}

class _introPageState extends State<introPage> {
  void selecthomepage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return homescreen();
    }));
  }

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: SizedBox(
          child: Image.asset('assets/images/diet.png'),
          width: (MediaQuery.of(context).size.width) / 2,
          height: (MediaQuery.of(context).size.width) / 3,
        ),
        title: "WELCOME",
        bodyWidget: Container(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            "Welcome to the househelp app !",
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
        ),
        //footer: Text("Footer Text here "),
        decoration: const PageDecoration(
          pageColor: Colors.white,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              fontFamily: 'montessarat'),
        ),
      ),
      PageViewModel(
        image: SizedBox(
          child: Image.asset('assets/images/medicine (1).png'),
          width: (MediaQuery.of(context).size.width) / 2,
          height: (MediaQuery.of(context).size.width) / 3,
        ),
        title: "EXPIRY DATE TRACKER ",
        bodyWidget: Container(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            "This feature will help you track the expiry date of your medicines so that you never have to worry about expired medicines again!",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        //footer: Text("Footer Text  here "),
        decoration: const PageDecoration(
          pageColor: Colors.white,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
              fontFamily: 'montessarat'),
        ),
      ),
      PageViewModel(
        image: SizedBox(
          child: Image.asset('assets/images/grocery (1).png'),
          width: (MediaQuery.of(context).size.width) / 2,
          height: (MediaQuery.of(context).size.width) / 3,
        ),
        title: "GROCERY TRACKER",
        bodyWidget: Container(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            "This feature will help you list out all your groceries which will make it easy for you while grocery shopping!",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        //footer: Text("Footer Text  here "),
        decoration: const PageDecoration(
          pageColor: Colors.white,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              fontFamily: 'montessarat'),
        ),
      ),
      PageViewModel(
        image: SizedBox(
          child: Image.asset('assets/images/cooking.png'),
          width: (MediaQuery.of(context).size.width) / 2,
          height: (MediaQuery.of(context).size.width) / 3,
        ),
        title: "RECIPES",
        bodyWidget: Container(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            "This section has a long list of delicious recipes along with their nutrition content for you",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        //footer: Text("Footer Text  here "),
        decoration: const PageDecoration(
          pageColor: Colors.white,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
              fontFamily: 'montessarat'),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Introduction Screen"),
      // ),
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        showNextButton: true,
        showSkipButton: true,
        next: Icon(
          Icons.arrow_right,
          color: Colors.lightGreen,
        ),
        skip: Text(
          "Skip",
          style: TextStyle(color: Colors.lightGreen),
        ),
        done: Text(
          "Got it ",
          style: TextStyle(
            color: Colors.lightGreen,
          ),
        ),
        dotsDecorator: DotsDecorator(
          color: Colors.lightGreen,
          activeColor: Colors.green,
        ),
        onDone: () {
          selecthomepage(context);
        },
      ),
    );
  }
}
