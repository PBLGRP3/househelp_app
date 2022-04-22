import 'package:flutter/material.dart';
import 'package:househelp_app/models/medicine.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';

class medicine_list_view extends StatelessWidget {
  final List<medicine> _medi_list;

  medicine_list_view(
    this._medi_list,
  );
  @override
  Widget build(BuildContext context) {
    return StickyGroupedListView<medicine, DateTime>(
      elements: _medi_list,
      order: StickyGroupedListOrder.ASC,
      groupBy: (medicine element) => DateTime(
        element.expiry_date.year,
        element.expiry_date.month,
      ),
      groupComparator: (DateTime value1, DateTime value2) =>
          value2.compareTo(value1),
      itemComparator: (medicine element1, medicine element2) =>
          element1.expiry_date.compareTo(element2.expiry_date),
      floatingHeader: true,
      groupSeparatorBuilder: (medicine element) => Container(
        margin: EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        height: 50,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 2,
                color: Colors.lightGreen,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' ${element.expiry_date.month.toString()}, ${element.expiry_date.year.toString()}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: "montressarat",
                ),
              ),
            ),
          ),
        ),
      ),
      itemBuilder: (_, medicine element) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
          child: Container(
            child: ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              leading: Padding(
                padding: const EdgeInsets.only(right: 40.0),
                child: Text(
                  "${element.expiry_date.difference(DateTime.now()).inDays}",
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 30,
                    fontFamily: "montessarat",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                element.name,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "montessarat",
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                '${element.add_date.day}',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "montessarat",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
