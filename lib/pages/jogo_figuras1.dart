import 'package:flutter/material.dart';
import 'package:memory_extreme_app/pages/matriz1.dart';

class Figuras1 extends StatefulWidget {

  List<String> imagens;

  @override
  _Figuras1State createState() => _Figuras1State();
}

class _Figuras1State extends State<Figuras1> {

  List<String> imagens = [
    "assets/imagens/bicicleta.png",
    "assets/imagens/bola.png",
    "assets/imagens/boneca.png",
    "assets/imagens/cachorro.png",
    "assets/imagens/carro.png",
    "assets/imagens/casaco.png",
    "assets/imagens/hamburguer.png",
    "assets/imagens/livro.png",
    "assets/imagens/moto.png",
    "assets/imagens/peteca.png",
    "assets/imagens/radio.png",
    "assets/imagens/relogio.png",
    "assets/imagens/telefone.png",
    "assets/imagens/televisao.png",
    "assets/imagens/cafe.png",
    "assets/imagens/cavalo.png",
    "assets/imagens/cinema.png",
    "assets/imagens/clapboard.png",
    "assets/imagens/computador.png",
    "assets/imagens/coruja.png",
    "assets/imagens/camera.png",
    "assets/imagens/mala.png",
    "assets/imagens/onibus.png",
    "assets/imagens/sapatilha.png",
    "assets/imagens/sorvete.png",
    "assets/imagens/violao.png",
  ];

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

    imagens..shuffle();
    List<String> memorizar = imagens.take(12).toList();

    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 10),
      width: size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(flex: 1, child: Text("Memorize essas figuras: ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ))),
          Expanded(flex: 1, child: _img(memorizar[0])),
          Expanded(flex: 1, child: _img(memorizar[1])),
          Expanded(flex: 1, child: _img(memorizar[2])),
          Expanded(flex: 0, child: _button(context, "Avançar")),
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

  _button(context, String text) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.purple
        ),
        child: Text(text, style: TextStyle(color: Colors.white)),
        onPressed: () {
          _onClickAvancar(context);
        }
    );
  }

  _onClickAvancar(context) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => Imagens1(imagens),
    ));
  }
}

