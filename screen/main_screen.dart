import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:live_expectancy/const.dart';
import 'package:live_expectancy/ozel_widgetlar/icon_Ve_text.dart';
import 'package:live_expectancy/ozel_widgetlar/my_container.dart';
import 'package:live_expectancy/screen/sonuc_ekrani.dart';

class InputPage extends StatefulWidget {
  @override

  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String seciliCinsiyet;
  double icilenSigara = 15;
  double yapilanSpor = 4;
  int boy = 170;
  int kilo = 45;




  @override
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }


  @override

  Widget build(BuildContext context) {

    Kullanici ahmet=Kullanici(isim: 'Ahmet',yas: 12);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MyContainer(
                    child: Row(
                      children: <Widget>[
                        RotatedBox(
                          child: Text(
                            "Boy",
                            style: TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Colors.white),
                          ),
                          quarterTurns: -1,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RotatedBox(
                          child: Text(
                            boy.toString(),
                            style: TextStyle(
                                fontSize: 25,
                                fontStyle: FontStyle.italic,
                                color: Colors.blue),
                          ),
                          quarterTurns: -1,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ButtonTheme(
                              minWidth: 20,
                              child: OutlineButton(
                                borderSide: BorderSide(color: Colors.blue),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    boy = boy + 1;
                                  });
                                },
                              ),
                            ),
                            ButtonTheme(
                              minWidth: 20,
                              child: OutlineButton(
                                borderSide: BorderSide(color: Colors.blue),
                                onPressed: () {
                                  setState(() {
                                    boy = boy - 1;
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: Row(
                      children: <Widget>[
                        RotatedBox(
                          child: Text(
                            "Kilo",
                            style: TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Colors.white),
                          ),
                          quarterTurns: -1,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RotatedBox(
                          child: Text(
                            kilo.toString(),
                            style: TextStyle(
                                fontSize: 25,
                                fontStyle: FontStyle.italic,
                                color: Colors.blue),
                          ),
                          quarterTurns: -1,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ButtonTheme(
                              minWidth: 20,
                              child: OutlineButton(
                                borderSide: BorderSide(color: Colors.blue),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    kilo = kilo + 1;
                                  });
                                },
                              ),
                            ),
                            ButtonTheme(
                              minWidth: 20,
                              child: OutlineButton(
                                borderSide: BorderSide(color: Colors.blue),
                                onPressed: () {
                                  setState(() {
                                    kilo = kilo - 1;
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MyContainer(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Günde kaç sigara içiyorsunuz ",
                          style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '${icilenSigara.round()}',
                          style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              color: Colors.blue),
                        ),
                        Slider(
                          min: 0,
                          max: 30,
                          value: icilenSigara,
                          onChanged: (double newValue) {
                            setState(() {
                              icilenSigara = newValue;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Haftada kaç gün spor yapıyorsunuz ",
                    style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${yapilanSpor.round()}',
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue),
                  ),
                  Slider(
                    max: 7.0,
                    min: 0,
                    value: yapilanSpor,
                    onChanged: (double newValue2) {
                      setState(
                        () {
                          yapilanSpor = newValue2;
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MyContainer(
                    onpress: () {
                      setState(() {
                        seciliCinsiyet = 'kadin';
                      });
                    },
                    color: basilmaRenegi2(),
                    child: ColumCinsiyetVeText(
                      color: Colors.yellow[700],
                      cinsiyet: 'kadın',
                      iconun: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onpress: () {
                      setState(() {
                        seciliCinsiyet = 'erkek';
                      });
                    },
                    color: basilmaRenegi(),
                    child: ColumCinsiyetVeText(
                      color: Colors.yellow[700],
                      cinsiyet: 'erkek',
                      iconun: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, SonucEkrani.sonucSayfa,arguments:ahmet);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Sonucu Gör",style: yaziStili,),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  basilmaRenegi() {
    if (seciliCinsiyet == 'erkek') {
      return Colors.red;
    } else {
      return Colors.black45;
    }
  }

  basilmaRenegi2() {
    if (seciliCinsiyet == 'kadin') {
      return Colors.red;
    } else {
      return Colors.black45;
    }
  }
}
class Kullanici{
  String isim;
  int yas;

  Kullanici({this.isim,this.yas});



}
