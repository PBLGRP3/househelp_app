import 'package:flutter/material.dart';
import 'package:househelp_app/models/medicine.dart';
import './medicine_list.dart';
import 'input_medicine.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ExpScreen extends StatefulWidget {
  @override
  _ExpScreenState createState() => _ExpScreenState();
}

class _ExpScreenState extends State<ExpScreen> {
  List<medicine> medicine_list = [
    /*medicine(
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
    )*/
  ];

  void addmedicine(DateTime expdate, String mname) {
    Uri url = Uri.parse(
        'https://househelpapp-f9dd7-default-rtdb.firebaseio.com//products.json');
    http
        .post(
      url,
      body: json.encode({
        'name': mname,
        'expdate': expdate.toIso8601String(),
      }),
    )
        .then((response) {
      final new_medicine = medicine(
        expiry_date: expdate,
        name: mname,
        add_date: DateTime.now(),
        id: json.decode(response.body),
      );

      setState(() {
        medicine_list.add(new_medicine);
      });
    });
  }

  void _deletemedicine(String id) {
    setState(() {
      medicine_list.removeWhere((md) {
        return md.id == id;
      });
    });
  }

  void startAddNewMedicine(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (bCtx) {
          return input(addmedicine);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {Navigator.of(context).pop()},
        ),
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {startAddNewMedicine(context)},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
