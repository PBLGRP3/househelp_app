import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class inputg extends StatefulWidget {
  final Function addgc;
  inputg(this.addgc); // constructor for input widget

  @override
  State<inputg> createState() => _inputgState();
}

class _inputgState extends State<inputg> {
  final nameController = TextEditingController();
  DateTime selectdate;
  void add() {
    final String enteredname = nameController.text;
    if (enteredname.isEmpty || selectdate == null) {
      return;
    }
    widget.addgc(enteredname);
    Navigator.of(context).pop();
  }

  void _presentdatepicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    ).then(
      (pickeddate) {
        if (pickeddate == null) {
          return null;
        }
        setState(() {
          selectdate = pickeddate;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Title",
                focusColor: Colors.lightGreen,
              ),
              controller: nameController,
              keyboardType: TextInputType.text,
              /*onChanged: (value) {
                      titleInput = value;
                    },*/
            ),
            /*TextField(
              decoration: InputDecoration(labelText: "amount"),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => add(),
              //onChanged: (value) => amountInput = value,
            )*/

            SizedBox(
              height: 40,
            ),
            RaisedButton(
              padding: EdgeInsets.all(20),
              color: Colors.lightGreen,
              onPressed: add,
              child: Text(
                "ADD MEDICINE",
                style: TextStyle(
                  fontFamily: "montessarat",
                  fontWeight: FontWeight.bold,
                ),
              ),
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
