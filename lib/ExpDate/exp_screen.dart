import 'package:flutter/material.dart';
import 'package:househelp_app/models/medicine.dart';
import './medicine_list.dart';

class ExpScreen extends StatefulWidget {
  @override
  _ExpScreenState createState() => _ExpScreenState();
}

class _ExpScreenState extends State<ExpScreen> {
  List<medicine> medicine_list = [
    medicine(
      name: "Combiflam",
      expiry_date: DateTime.utc(
        2022,
        5,
      ),
      id: 1,
      add_date: DateTime.now(),
    ),
    medicine(
      name: "Crocin",
      expiry_date: DateTime.utc(
        2022,
        8,
      ),
      id: 1,
      add_date: DateTime.now(),
    )
  ];

  void addmedicine(DateTime expdate, String mname) {
    final new_medicine = medicine(
      expiry_date: expdate,
      name: mname,
      add_date: DateTime.now(),
    );

    setState(() {
      medicine_list.add(new_medicine);
    });
  }

  void _deletemedicine(String id) {
    setState(() {
      medicine_list.removeWhere((md) {
        return md.id == id;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.green),
        elevation: 0,
        title: Text(
          "EXPIRY DATE TRACKER",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'montessarat',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: medicine_list_view(medicine_list),
      ),
    );
  }
}
