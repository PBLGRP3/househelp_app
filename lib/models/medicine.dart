import 'package:flutter/material.dart';

class medicine {
  final String name;
  final int id;
  final DateTime expiry_date;
  final DateTime add_date;

  medicine({
    @required this.name,
    @required this.expiry_date,
    this.id = 0,
    @required this.add_date,
  });
}
