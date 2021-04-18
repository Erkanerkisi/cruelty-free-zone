import 'package:cloud_firestore/cloud_firestore.dart';

class CompanyRepository {
  List<String> data = [
    "Apple",
    "Apricot",
    "Banana",
    "Blackberry",
    "Coconut",
    "Date",
    "Fig",
    "Gooseberry",
    "Grapes",
    "Lemon",
    "Litchi",
    "Mango",
    "Orange",
    "Papaya",
    "Peach",
    "Pineapple",
    "Pomegranate",
    "Starfruit"
  ];

  final CollectionReference dotest =
      FirebaseFirestore.instance.collection("dotest");

  final CollectionReference donottest =
      FirebaseFirestore.instance.collection("donottest");

  Future<List<QuerySnapshot>> findList(bool test) {
    if (test) {
      return dotest.snapshots().toList();
    } else {
      return donottest.snapshots().toList();
    }
  }
}
