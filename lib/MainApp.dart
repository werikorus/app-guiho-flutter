import 'package:device_apps/device_apps.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'manuais.dart';
import 'dart:core';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final int translate;

  HomePage({this.translate});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _callGame() async {
    DeviceApps.openApp('com.innovationhunt.dentinho');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              alignment: Alignment.center,
              fit: BoxFit.fill),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 50),
                Container(
                  height: 135,
                  width: 135,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/HDicons/logo.png'),
                        alignment: Alignment.center,
                        fit: BoxFit.fill),
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: 115,
                  height: 115,
                  child: RaisedButton(
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/images/HDicons/book_2.png'),
                        ),
                        Text(
                          widget.translate != 0
                              ? Translate.idioma['port'][3]
                              : Translate.idioma['kraho'][1],
                          style: TextStyle(
                              fontSize: 15, color: Colors.red[900]), //KRAHO
                        ),
                      ],
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => MainManuais(
                            origin: 1,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: 115,
                  height: 115,
                  child: RaisedButton(
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/images/HDicons/book_2.png'),
                        ),
                        Text(
                          widget.translate != 0
                              ? Translate.idioma['port'][2]
                              : Translate.idioma['kraho'][0],
                          style: TextStyle(
                              fontSize: 15, color: Colors.red[900]), //PORT
                        ),
                      ],
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => MainManuais(
                            origin: 0,
                          ),
                        ),
                      ); //Manual em Krahô
                    },
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: 115,
                  height: 115,
                  child: RaisedButton(
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/images/HDicons/game_2.png'),
                        ),
                        Text(
                          widget.translate != 0
                              ? Translate.idioma['port'][4]
                              : Translate.idioma['kraho'][2],
                          style: TextStyle(
                              fontSize: 15, color: Colors.red[900]), //JOGO
                        ),
                      ],
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
                    onPressed: () {
                      _callGame();
                    },
                  ),
                ),
                SizedBox(height: 45),
                ClipOval(
                  child: Container(
                    height: 35,
                    child: FlatButton(
                      child: Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 33,
                      ),
                      padding: EdgeInsets.all(0.0),
                      onPressed: () {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) => AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            title:
                                Text('Sobre nós', textAlign: TextAlign.center),
                            content: Container(
                              height: 290,
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      'Somos "Inovation Hunt". Uma equipe de desenvolvimento do curso de Análise e Desenvolvimento de Sistemas da faculdade' +
                                          ' de ciências do Tocantins (FACIT).' +
                                          ' Buscamos o que há de melhor da atualidade para implementar em nossos produtos digitais.',
                                      textAlign: TextAlign.justify,
                                      softWrap: true,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Equipe:',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Carlos Augusto\nJessica Rodrigues\nLuis Paulo Gomes\nRomulo Matias\nWerik Santos.',
                                      textAlign: TextAlign.center,
                                      softWrap: false,
                                    ),
                                    SizedBox(height: 15),
                                    Image(
                                      image: AssetImage(
                                          'assets/images/license.jpeg'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                child: Text(
                                  'OK',
                                  style:
                                      TextStyle(color: Colors.redAccent[900]),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
