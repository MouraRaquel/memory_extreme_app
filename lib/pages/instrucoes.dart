import 'package:flutter/material.dart';
import 'package:memory_extreme_app/home_page.dart';
import 'package:memory_extreme_app/pages/jogo_figuras.dart';
import 'package:memory_extreme_app/pages/jogo_palavras.dart';

class InstrucoesPalavras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instruções"),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const AlwaysScrollableScrollPhysics(),
      child: Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
                "O Jogo das Palavras funciona assim: Aparecerão algumas "
                "palavras, memorize-as. Depois, tente encontrá-las no "
                "meio de todas as palavras mostradas a seguir. Toque "
                "nas palavras na sequência em que apareceram anteriormente.",

                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
        Text(""),
            Text(""),Text(""), Text(""),Text(""),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(flex: 0, child: _buttonAdvance(context, "Avançar")),
                Expanded(flex: 0, child: _buttonExit(context, "Sair")),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _buttonAdvance(context, String text) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.purple, minimumSize: Size(150, 50)),
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 30)),
        onPressed: () {
          _onClickAdvance(context);
        });
  }

  _buttonExit(context, String text) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.purple, minimumSize: Size(150, 50)),
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 30)),
        onPressed: () {
          _onClickExit(context);
        });
  }

  _onClickAdvance(context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return Palavras();
    }));
  }

  _onClickExit(context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return HomePage();
    }));
  }
}

class InstrucoesFiguras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instruções"),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: Container(
      padding: EdgeInsets.all(15),
      width: size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
              "O Jogo das Figuras funciona assim: Aparecerão algumas "
              "figuras, memorize-as. Depois, tente encontrá-las no "
              "meio de todas as figuras mostradas a seguir. Toque nas "
              "figuras que apareceram anteriormente.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          Text(""),Text(""),Text(""),Text(""),Text(""),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(flex: 0, child: _buttonAdvance(context, "Avançar")),
              Expanded(flex: 0, child: _buttonExit(context, "Sair")),
            ],
          ),
        ],
      ),
    ));
  }

  _buttonAdvance(context, String text) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.purple, minimumSize: Size(150, 50)),
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 30)),
        onPressed: () {
          _onClickAdvance(context);
        });
  }

  _buttonExit(context, String text) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.purple, minimumSize: Size(150, 50)),
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 30)),
        onPressed: () {
          _onClickExit(context);
        });
  }

  _onClickAdvance(context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return Figuras(9, 2);
    }));
  }

  _onClickExit(context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return HomePage();
    }));
  }
}
