import 'package:flutter/material.dart';
import 'package:househelp_app/models/medicine.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';
import '../notification_service.dart';
import 'package:househelp_app/models/grocery.dart';

class grocery_list_view extends StatelessWidget {
  final List<grocery> _groc_list;

  grocery_list_view(
    this._groc_list,
  );
  @override
  Widget build(BuildContext context) {
    return StickyGroupedListView<grocery, DateTime>(
      elements: _groc_list,
      order: StickyGroupedListOrder.DESC,
      groupBy: (grocery element) => DateTime(
        element.addtime.year,
        element.addtime.month,
      ),
      groupComparator: (DateTime value1, DateTime value2) =>
          value2.compareTo(value1),
      itemComparator: (grocery element1, grocery element2) =>
          element1.addtime.compareTo(element2.addtime),
      floatingHeader: true,
      groupSeparatorBuilder: (grocery element) => Container(
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
                ' ${element.addtime.month.toString()}, ${element.addtime.year.toString()}',
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
      itemBuilder: (_, grocery element) {
        print(element.quantity);
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
                  "${element.quantity}",
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 30,
                    fontFamily: "montessarat",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                element.title,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "montessarat",
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                "${element.addtime.day.toString()}/${element.addtime.month.toString()}/${element.addtime.year.toString()}",
                //'${element.add_date.day}',DateTime.now().difference(element.addtime).inDays
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
