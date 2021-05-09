import 'package:flutter/material.dart';
import 'package:memory_extreme_app/pages/jogo_palavras.dart';

class Instrucoes extends StatelessWidget {

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
          Expanded(flex: 5, child: Text("O jogo das palavras funciona assim: Memorize a palavra a seguir, "
              "em seguida outras palavras serão apresentadas, "
              "mas você precisa selecionar a palavra vista anteriormente!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ))),
          Expanded(flex: 0, child: Text(" ", style: TextStyle(color: Colors.white))),
          Expanded(flex: 0, child: _button(context, "Avançar")),
          Expanded(flex: 1, child: Text(" ", style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }
  _button(context, String text) {
    return RaisedButton(
        color: Colors.purple,
        child: Text(text, style: TextStyle(color: Colors.white)),
        onPressed: () {
          _onClickAvancar(context);
        }
    );
  }

  _onClickAvancar(context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return Palavras();
    }));
  }

}