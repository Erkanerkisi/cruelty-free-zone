import 'package:cruelty_free_zone/localization/crueltyfreezone_localizations_delegate.dart';
import 'package:cruelty_free_zone/pages/company_list.dart';
import 'package:cruelty_free_zone/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final routes = {
    '/does-test-companies': (context) => CompanyList(test: true,),
    '/does-not-test-companies': (context) => CompanyList(test: false,),
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      title: 'Cruelty Free Zone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        const CrueltyFreeZoneLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('tr', 'TR')
      ],
    );
  }
}