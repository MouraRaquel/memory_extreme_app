import 'package:flutter/material.dart';
import 'package:memory_extreme_app/pages/jogo_das_figuras.dart';
import 'package:memory_extreme_app/pages/jogo_palavras.dart';

class opcoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: _body(context),

    );
  }

  _body(context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      padding: EdgeInsets.only(top: 40),
      width: size.width,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(flex: 1, child: Text(
              "O que você gostaria de fazer?",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,

              ))),
          Expanded(flex: 0, child: _button(context, "   Ir para o Jogo   ", () => _onClickNavigator(context, Palavras()))),
          Expanded(flex: 0, child: _button(context, "Ir para Instruções", () => _onClickNavigator(context, Figuras()))),
          Expanded(flex: 3, child: Text(
              " ",
              style: TextStyle(fontSize: 200,
                  color: Colors.white,
                  fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }

  _button(context, String text, Function onPressed) {
    return RaisedButton(
        color: Colors.purple,
        child: Text(text, style: TextStyle(color: Colors.white)),
        onPressed: onPressed
    );
  }

  void _onClickNavigator(BuildContext context, Widget home_page) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return home_page;
    }));
  }

}