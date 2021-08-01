import 'package:flutter/material.dart';
import 'package:flutter_web/view/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fa', 'IR'), // English, no country code
      ],
      locale: Locale('fa', 'IR'),

      debugShowCheckedModeBanner: false,
      title: 'mrroz2',
      theme: ThemeData(
        fontFamily: "Vazir",
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

