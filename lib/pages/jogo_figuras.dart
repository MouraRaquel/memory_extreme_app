import 'package:flutter/material.dart';
import 'package:memory_extreme_app/pages/instrucoes.dart';
import 'package:memory_extreme_app/pages/matriz.dart';

class Figuras extends StatefulWidget {

  List<String> imagens;

  @override
  _FigurasState createState() => _FigurasState();
}

class _FigurasState extends State<Figuras> {

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
    "assets/imagens/urso.png",
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

    List<String> obterSelecionadas() {
      List<String> imagensEmbaralhadas = imagens..shuffle();
      List<String> imagensSelecionadas = imagensEmbaralhadas.take(9).toList();
      return imagensSelecionadas;
    }

    List<String> sorteadas = [];
    sorteadas = obterSelecionadas();
    print("Sorteadas: $sorteadas");
    List<String> embaralhadas = sorteadas..shuffle();
    print("Embaralhadas: $embaralhadas");

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
          Expanded(flex: 1, child: _img(embaralhadas[0])),
          Expanded(flex: 1, child: _img(embaralhadas[1])),
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
    return RaisedButton(
        color: Colors.purple,
        child: Text(text, style: TextStyle(color: Colors.white)),
        onPressed: () {
          setState(() {
            _onClickAvancar(context);
          });
        }
    );
  }

  _onClickAvancar(context) {
    Navigator.push(context, MaterialPageRoute(
          builder: (context) => Imagens(imagens, imagens),
        ));
  }
}

class OpcoesFiguras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
          Expanded(
              flex: 1,
              child: Text("O que você gostaria de fazer?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ))),
          Expanded(
              flex: 0,
              child: _button(context, "   Ir para o Jogo   ",
                  () => _onClickNavigator(context, Figuras()))),
          Expanded(
              flex: 0,
              child: _button(context, "Ir para Instruções",
                  () => _onClickNavigator(context, figuras(context)))),
          Expanded(
              flex: 3,
              child: Text(" ",
                  style: TextStyle(
                      fontSize: 200,
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
        onPressed: onPressed);
  }

  void _onClickNavigator(BuildContext context, Widget home_page) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return home_page;
    }));
  }

  Widget figuras(context) {
    return InstrucoesFiguras();
  }
}
