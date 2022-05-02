import 'package:flutter/material.dart';
import 'package:househelp_app/models/medicine.dart';
import 'package:househelp_app/models/grocery.dart';
import './grocery_list.dart';
import './input_grocery.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class groceryscreen extends StatefulWidget {
  @override
  _groceryscreenState createState() => _groceryscreenState();
}

class _groceryscreenState extends State<groceryscreen> {
  List<grocery> grocery_list = [
    grocery(title: "salt", addtime: DateTime.now())
  ];

  Future<List<grocery>> gfetchandset() async {
    Uri url = Uri.parse(
        'https://househelpapp-f9dd7-default-rtdb.firebaseio.com//groceries.json');

    final response = await http.get(url);
    final extracted_data = json.decode(response.body) as Map<String, dynamic>;
    List<grocery> loaded_groceries = [];
    extracted_data.forEach((prodId, prodData) {
      loaded_groceries.add(grocery(
        //id: int.parse(prodId),
        title: prodData["title"],
        addtime: DateTime.parse(
          prodData["addtime"],
        ),
      ));

      //print("out successfully");
    });

    return loaded_groceries;
  }

  void addgrocery(String gname, int gquantity) {
    Uri url = Uri.parse(
        'https://househelpapp-f9dd7-default-rtdb.firebaseio.com//groceries.json');
    http.post(
      url,
      body: json.encode({
        'title': gname,
        'addtime': DateTime.now().toIso8601String(),
        'quantity': gquantity,
      }),
    );

    final new_grocery = grocery(
      addtime: DateTime.now(),
      title: gname,
      quantity: gquantity,
    );

    setState(() {
      grocery_list.add(new_grocery);
    });
  }

  void startAddNewMedicine(BuildContext ctx) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        context: ctx,
        builder: (bCtx) {
          return inputg(addgrocery);
        });
  }

  @override
  // void initState() {
  //fetchandset();
  //addgrocery("sugar");
  // super.initState();
  //}

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
          "GROCERIES TRACKER",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'montessarat',
          ),
        ),
      ),
      body:
          /*Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: medicine_list_view(medicine_list),
      ),*/
          FutureBuilder(
        //initialData: [],
        future: gfetchandset(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            //print(snapshot.data[0].name);
            return Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: grocery_list_view(snapshot.data),
            );
          } else if (snapshot.hasError) {
            print(snapshot.error);
            return Text("error");
          } else
            return LinearProgressIndicator(value: null);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {startAddNewMedicine(context)},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
