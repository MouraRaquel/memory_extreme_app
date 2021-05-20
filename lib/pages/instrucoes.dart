import 'package:flutter/material.dart';
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
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 20),
      width: size.width,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
              flex: 5,
              child: Text(
                  "O Jogo das Palavras funciona assim: Memorize a palavra que "
                  "será apresentada, em seguida você verá uma matriz com "
                  "algumas palavras, nesse momento você precisará selecionar "
                  "a palavra memorizada. Na sequência será apresentada uma nova"
                  "palavra e em seguida uma nova matriz, e então você precisará"
                  "selecionar as palavras na sequência em que foram "
                  "memorizadas.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ))),
          Expanded(
              flex: 0, child: Text(" ", style: TextStyle(color: Colors.white))),
          Expanded(flex: 0, child: _button(context, "Avançar")),
          Expanded(
              flex: 1, child: Text(" ", style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }

  _button(context, String text) {
    return TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.purple),
        child: Text(text, style: TextStyle(color: Colors.white)),
        onPressed: () {
          _onClickAvancar(context);
        });
  }

  _onClickAvancar(context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return Palavras();
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

    return Container(
      padding: EdgeInsets.only(top: 20),
      width: size.width,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
              flex: 5,
              child: Text(
                  "O Jogo das Figuras funciona assim: Aparecerão algumas "
                  "figuras, memorize-as. Depois, tente encontrá-las no "
                  "meio de todas as figuras mostradas a seguir. Toque nas "
                  "figuras que apareceram anteriormente.",

                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ))),
          Expanded(
              flex: 0, child: Text(" ", style: TextStyle(color: Colors.white))),
          Expanded(flex: 0, child: _button(context, "Avançar")),
          Expanded(
              flex: 1, child: Text(" ", style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }

  _button(context, String text) {
    return TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.purple),
        child: Text(text, style: TextStyle(color: Colors.white)),
        onPressed: () {
          _onClickAvancar(context);
        });
  }

  _onClickAvancar(context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return Figuras(9, 2);
    }));
  }
}
