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
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
            image: AssetImage("assets/images/firmalar.png"),
            fit: BoxFit.cover,
          ),
        ),
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
                  height: 75,
                  child: RaisedButton(
                      color: Colors.red,
                      onPressed: () {
                        Navigator.pushNamed(context, "/does-test-companies");
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0))),
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
                  height: 75,
                  child: RaisedButton(
                      color: Colors.blueAccent,
                      onPressed: () {
                        Navigator.pushNamed(context, "/does-not-test-companies");
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0))),
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
