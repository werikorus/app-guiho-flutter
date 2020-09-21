import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'manuais.dart';
import 'MainApp.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guihô',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.ubuntuTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Guihô'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int translate = 0;
  @override
  initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              alignment: Alignment.center,
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 85, bottom: 1),
              ),
              // Aqui vai ser os textos do Main form
              Text(
                'Guihô',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
              Text(
                'Guia de saúde bucal Krahô\n',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              SizedBox(height: 20),
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/HDicons/logo.png'),
                      alignment: Alignment.center,
                      fit: BoxFit.fill),
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: 150,
                height: 60,
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Text(
                    translate != 0
                        ? Translate.idioma['port'][1]
                        : Translate.idioma['kraho'][3],
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.red[900], fontSize: 25),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                          translate: translate,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 150),
              ),
              ToggleSwitch(
                minWidth: 65.0,
                initialLabelIndex: 0,
                activeBgColor: Colors.red,
                activeTextColor: Colors.white,
                inactiveBgColor: Colors.white,
                inactiveTextColor: Colors.grey[900],
                labels: ['Krahô', 'Português'],
                onToggle: (index) {
                  setState(() {
                    translate = index;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
