import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:live_expectancy/screen/main_screen.dart';
import 'package:live_expectancy/screen/sonuc_ekrani.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {


    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.brown[200],
        primaryColor: Colors.yellow[800],
        accentColor: Colors.red[900]
      ),
     //  home: InputPage(),
        initialRoute: '/',
        routes:{
          '/': (context)=>InputPage(),
          SonucEkrani.sonucSayfa:(context)=>SonucEkrani()

        }
    );
  }
}
