import 'package:flutter/material.dart';

class medicine {
  final String name;
  final int id;
  final DateTime expiry_date;
  final DateTime add_date;

  medicine({
    @required this.name = "null",
    @required this.expiry_date,
    this.id = 0,
    this.add_date,
  });
}
