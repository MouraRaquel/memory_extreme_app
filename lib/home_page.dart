import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memory_extreme_app/pages/drawer_list.dart';
import 'package:memory_extreme_app/pages/instrucoes.dart';
import 'package:memory_extreme_app/pages/jogo_figuras.dart';
import 'package:memory_extreme_app/pages/jogo_palavras.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Memory Extreme", style: TextStyle(
        color: Colors.black,)),),
      body: _body(context),
      drawer: DrawerList(),
    );
  }

  _body(context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 2),
      width: size.width,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(flex: 1, child: Text("Memory Extreme", style: TextStyle(
              fontSize: 32,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
              fontFamily: 'SigmarOne',))),
        Expanded(flex: 7, child: _img("assets/imagens/cerebro_exercitando.png")),
        Expanded(flex: 0, child: _button(context, "Avançar")),
          Expanded(flex: 1, child: Text(" ", style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }

  _button(context, String text) {
    return TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.purple, minimumSize: Size(150, 50)),
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 30)),
        onPressed: () {
          _onClickAvancar(context);
        });
  }

  _onClickAvancar(context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return Jogos();
    }));
  }

  _img(String img) {
    return Image.asset(
      img,
      width: 300,
      height: 300,
    );
  }
}
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