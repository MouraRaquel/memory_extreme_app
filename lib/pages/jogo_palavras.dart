import 'package:flutter/material.dart';

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
      height: size.height,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _button(context, "Maracujá", _onClickMaracuja),
              _button(context, "Mamão", _onClickMamao),
              _button(context, "Melância", _onClickMelancia)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _button(context, "Morango", _onClickMorango),
              _button(context, "Manga", _onClickManga),
              _button(context, "Amora", _onClixckAmora)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _button(context, "Carambola", _onClickCarambola),
              _button(context, "Maçã", _onClickMaca),
              _button(context, "Jamelão", _onClickJamelao)
            ],
          ),
        ],
      ),
    );
  }

  _button(context, String text, Function onPressed) {
    return RaisedButton(
        color: Colors.purple,
        child: Text(text, style: TextStyle(color: Colors.white)),
        onPressed: onPressed);
  }

  _onClickMaracuja() {}

  _onClickMamao() {}

  _onClickMelancia() {}

  _onClickMorango() {}

  _onClickManga() {}

  _onClixckAmora() {}

  _onClickCarambola() {}

  _onClickMaca() {}

  _onClickJamelao() {}
}
