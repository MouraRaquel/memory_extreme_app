import 'package:flutter/material.dart';

class Figuras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Figuras"),
      ),
      body: _body(context),
    );
  }
  _body(context) {

    List<Image> _imagens = [
      _img("assets/imagens/bicicleta.png"),
      _img("assets/imagens/bola.png"),
      _img("assets/imagens/boneca.png"),
      _img("assets/imagens/cachorro.png"),
      _img("assets/imagens/carro.png"),
      _img("assets/imagens/casaco.png"),
      _img("assets/imagens/hamburguer.png"),
      _img("assets/imagens/livro.png"),
      _img("assets/imagens/moto.png"),
      _img("assets/imagens/peteca.png"),
      _img("assets/imagens/radio.png"),
      _img("assets/imagens/relógio.png"),
      _img("assets/imagens/telefone.png"),
      _img("assets/imagens/televisao.png"),
      _img("assets/imagens/urso.png"),
    ];

    List<Image> imagensEmbaralhadas = _imagens..shuffle();

    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(flex: 5, child: Text("Memorize essas figuras: ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ))),
          Expanded(flex: 1, child: Text(" ", style: TextStyle(color: Colors.white))),
          Expanded(flex: 1, child: Text(" ", style: TextStyle(color: Colors.white))),
          Expanded(flex: 1, child: Text(" ", style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }

  _img(String img) {
    return Image.asset(
      img,
      width: 100,
      height: 100,
    );
  }
}

