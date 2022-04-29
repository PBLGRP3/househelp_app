import 'package:flutter/material.dart';

class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        //Padding(
        //padding: const EdgeInsets.only(top: 8.0),
        Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          CircleAvatar(
            radius: 65,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 60,
              //backgroundImage: AssetImage('assets/images/user_profile.jpg'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Name',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'Montessarat',
            ),
          ),
          SizedBox(
            height: 40,
          ),

          _SliderMenuItem(
            title: 'Home',
            iconData: Icons.home,
            onTap: null,
          ),

          _SliderMenuItem(
              title: 'Notification',
              iconData: Icons.notifications_active,
              onTap: null),

          _SliderMenuItem(
            title: 'Settings',
            iconData: Icons.settings,
            onTap: null,
          ),

          _SliderMenuItem(
            title: 'Exit',
            iconData: Icons.arrow_back_ios,
            onTap: null,
          ),
          //),
        ],
      ),
    );
  }
}

class _SliderMenuItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function onTap;

  const _SliderMenuItem(
      {@required this.title, @required this.iconData, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 50,
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'montessarat',
          ),
        ),
        leading: Icon(iconData, color: Colors.black),
        onTap: () => onTap?.call(title),
      ),
    );
  }
}
