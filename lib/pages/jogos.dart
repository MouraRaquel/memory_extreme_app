import 'package:flutter/material.dart';
import 'package:memory_extreme_app/pages/instrucoes.dart';

class Jogos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jogos"),
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
          Expanded(flex: 3, child: Text(
              " ",
              style: TextStyle(fontSize: 200,
                  color: Colors.white,
                  fontWeight: FontWeight.bold))),
          Expanded(flex: 2, child: Text(
              "Escolha um jogo",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Expanded(flex: 0, child: _button(context, "PALAVRAS", () => _onClickNavigator(context, InstrucoesPalavras()))),

              Expanded(flex: 0, child: _button(context, "  FIGURAS  ", () => _onClickNavigator(context, InstrucoesFiguras()))
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(flex: 5, child: Text(
                  " ",
                  style: TextStyle(fontSize: 200,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))),
            ], )
        ],
      ),
    );
  }

  _button(context, String text, Function onPressed) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.purple
        ),
        child: Text(text, style: TextStyle(color: Colors.white)),
        onPressed: onPressed
    );
  }

  void _onClickNavigator(BuildContext context, Widget homePage) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return homePage;
    }));
  }
}