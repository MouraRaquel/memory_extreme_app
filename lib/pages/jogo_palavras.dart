import 'package:flutter/material.dart';

import 'categorias_de_palavras.dart';

class Palavras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Palavras"),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 40),
      width: size.width,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
        Expanded(flex: 5, child: Text("Memorize essa palavra: ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ))),
          Expanded(flex: 6, child: Text(Categoria().frutas[0], style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold)), ),
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
      return Categoria();
    }));
  }
  /*
  _button(context, String text, Function onPressed) {
    return RaisedButton(
        color: Colors.purple,
        child: Text(text, style: TextStyle(color: Colors.white)),
        onPressed: onPressed);
  }*/
}
