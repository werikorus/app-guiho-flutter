import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class MainManuais extends StatefulWidget {
  final int origin;

  MainManuais({this.origin = 0});

  @override
  _MainManuaisState createState() => _MainManuaisState();
}

class _MainManuaisState extends State<MainManuais> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var scaffold = Scaffold(
      body: PageView.builder(
        itemCount: widget.origin == 0
            ? Manual.paginas['portugues'].length
            : Manual.paginas['kraho'].length,
        itemBuilder: (cxt, i) {
          return Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.origin == 0
                    ? Manual.paginas['portugues'][i]
                    : Manual.paginas['kraho'][i]),
                alignment: Alignment.center,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.reply_all),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
    return scaffold;
  }
}

class Manual {
  static Map<String, List> paginas = {
    'portugues': [
      'assets/images/mport/ptpag_01.png',
      'assets/images/mport/ptpag_02.png',
      'assets/images/mport/ptpag_03.png',
      'assets/images/mport/ptpag_04.png',
      'assets/images/mport/ptpag_05.png',
      'assets/images/mport/ptpag_06.png',
      'assets/images/mport/ptpag_07.png',
      'assets/images/mport/ptpag_08.png',
      'assets/images/mport/ptpag_09.png',
      'assets/images/mport/ptpag_10.png',
      'assets/images/mport/ptpag_11.png',
      'assets/images/mport/ptpag_12.png',
      'assets/images/mport/ptpag_13.png',
      'assets/images/mport/ptpag_14.png',
      'assets/images/mport/ptpag_15.png',
      'assets/images/mport/ptpag_16.png',
      'assets/images/mport/ptpag_17.png',
      'assets/images/mport/ptpag_18.png',
      'assets/images/mport/ptpag_19.png',
    ],
    'kraho': [
      'assets/images/mkrao/khpag_01.png',
      'assets/images/mkrao/khpag_02.png',
      'assets/images/mkrao/khpag_03.png',
      'assets/images/mkrao/khpag_04.png',
      'assets/images/mkrao/khpag_05.png',
      'assets/images/mkrao/khpag_06.png',
      'assets/images/mkrao/khpag_07.png',
      'assets/images/mkrao/khpag_08.png',
      'assets/images/mkrao/khpag_09.png',
      'assets/images/mkrao/khpag_10.png',
      'assets/images/mkrao/khpag_11.png',
      'assets/images/mkrao/khpag_12.png',
      'assets/images/mkrao/khpag_13.png',
      'assets/images/mkrao/khpag_14.png',
      'assets/images/mkrao/khpag_15.png',
      'assets/images/mkrao/khpag_16.png',
      'assets/images/mkrao/khpag_17.png',
      'assets/images/mkrao/khpag_18.png',
      'assets/images/mkrao/khpag_19.png',
      'assets/images/mkrao/khpag_20.png',
    ],
  };
}

class Translate {
  static Map<String, List> idioma = {
    'port': [
      'Guia de Saúde bucal Khraô',
      'ENTRAR',
      'Português',
      'Krahô',
      'Jogo',
    ],
    'kraho': [
      'Cupê arkwa', //Guia em Português
      'Mehi arkwa', //Guia em Krahô
      'Hô krunxà', // jogo
      'Axà', //Entrar
    ],
  };
}
