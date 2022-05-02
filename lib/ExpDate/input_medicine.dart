/*import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class input extends StatefulWidget {
  final Function addmd;
  input(this.addmd); // constructor for input widget

  @override
  State<input> createState() => _inputState();
}

class _inputState extends State<input> {
  final nameController = TextEditingController();
  DateTime selectdate;
  void add() {
    final String enteredname = nameController.text;
    if (enteredname.isEmpty || selectdate == null) {
      return;
    }
    widget.addmd(selectdate, enteredname);
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
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Title"),
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
            Container(
              height: 70,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      selectdate == null
                          ? "no date chosen :"
                          : DateFormat.yMd().format(selectdate),
                    ),
                  ),
                  FlatButton(
                    textColor: Theme.of(context).primaryColor,
                    onPressed: _presentdatepicker,
                    child: Text(
                      "choose date",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              onPressed: add,
              child: Text("ADD MEDICINE"),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class input extends StatefulWidget {
  final Function addmd;
  input(this.addmd); // constructor for input widget

  @override
  State<input> createState() => _inputState();
}

class _inputState extends State<input> {
  final nameController = TextEditingController();
  DateTime selectdate;
  void add() {
    final String enteredname = nameController.text;
    if (enteredname.isEmpty || selectdate == null) {
      return;
    }
    widget.addmd(selectdate, enteredname);
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
            Container(
              height: 70,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      selectdate == null
                          ? "no date chosen :"
                          : DateFormat.yMd().format(selectdate),
                      style: TextStyle(
                        color: Colors.lightGreen,
                        fontFamily: "montessarat",
                      ),
                    ),
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(15),
                    textColor: Colors.lightGreen,
                    onPressed: _presentdatepicker,
                    child: Text(
                      "CHOOSE DATE",
                      style: TextStyle(
                        fontFamily: "montessarat",
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
