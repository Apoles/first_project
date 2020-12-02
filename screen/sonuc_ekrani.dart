



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_expectancy/screen/main_screen.dart';

import 'package:live_expectancy/textler.dart';

class SonucEkrani extends StatelessWidget {
  static String sonucSayfa='/SonucEkranı';
  @override
  Widget build(BuildContext context) {
    Kullanici aKullanici=ModalRoute.of(context).settings.arguments;

int yasam1=60;
int yasam2=70;



    return Scaffold(
      appBar: AppBar(
        leading: FlatButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text("Second Route"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(


            children: <Widget>[
              Text(spors(),style: TextStyle(fontSize: 18,color: Colors.black),),
              SizedBox(height: 30,),
              Text(sigara() ,style:TextStyle(fontSize: 18,color: Colors.black),),
              SizedBox(height: 30,),
              Text("Tahmini yaşam süresi:$yasam1 ve $yasam2 yaş arasıdır",style: TextStyle(color: Colors.red[900],fontSize: 30),),
              Text(aKullanici.isim)
            ],
          ),
        )
      ),
    );
  }
}