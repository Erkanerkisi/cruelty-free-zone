import 'package:flutter/material.dart';

class Company {
  Company(this.name);

  String name;

  static List<Company> of(AsyncSnapshot snapshot) {
    return snapshot.data.documents
        .map((com) => Company(com.data()['company']))
        .toList()
        .cast<Company>();
  }
}
