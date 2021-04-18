import 'package:cruelty_free_zone/localization/crueltyfreezone_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Cruelty Free Zone"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  width: 350,
                  height: 100,
                  child: RaisedButton(
                      color: Colors.red,
                      onPressed: () {
                        Navigator.pushNamed(context, "/does-test-companies");
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                          CrueltyFreeZoneLocalization.of(context).doesTestButton,
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  width: 350,
                  height: 100,
                  child: RaisedButton(
                      color: Colors.blueAccent,
                      onPressed: () {
                        Navigator.pushNamed(context, "/does-not-test-companies");
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        CrueltyFreeZoneLocalization.of(context).doesNotTestButton,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
