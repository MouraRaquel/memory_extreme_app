import 'package:flutter/material.dart';
import 'package:memory_extreme_app/pages/instrucoes.dart';

class Figuras extends StatelessWidget {
  
  List<String> _imagens = [
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

  get _imagensSelecionadas {
    List<String> imagensEmbaralhadas = _imagens..shuffle();
    List<String> _imagensSelecionadas = [...imagensEmbaralhadas].take(9).toList();
    print("Aqui é o print das Imagens selecionadas $_imagensSelecionadas");
    return _imagensSelecionadas;
  }

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

    List _foto = _imagensSelecionadas;

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
          Expanded(flex: 1, child: Matriz()._img(_foto[0])),
          Expanded(flex: 1, child: Matriz()._img(_foto[1])),
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
          _onClickAvancar(context);
        }
    );
  }

  _onClickAvancar(context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return Matriz();
    }));
  }

}

class OpcoesFiguras extends StatelessWidget {
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
          Expanded(flex: 0, child: _button(context, "   Ir para o Jogo   ", () => _onClickNavigator(context, Figuras()))),
          Expanded(flex: 0, child: _button(context, "Ir para Instruções", () => _onClickNavigator(context, figuras(context)))),
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

  Widget figuras(context) {
    return InstrucoesFiguras();

  }

}

class Matriz extends StatelessWidget {

  List _foto = Figuras()._imagensSelecionadas..shuffle();

  List get foto => _foto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(context) {

    print("Aqui é o print da lista de fotos embaralhadas $_foto");
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(2),
      width: size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(flex: 1, child: _img(_foto[0])),
              Expanded(flex: 1, child: _img(_foto[1])),
              Expanded(flex: 1, child: _img(_foto[2])),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(flex: 1, child: _img(_foto[3])),
              Expanded(flex: 1, child: _img(_foto[4])),
              Expanded(flex: 1, child: _img(_foto[5])),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(flex: 1, child: _img(_foto[6])),
              Expanded(flex: 1, child: _img(_foto[7])),
              Expanded(flex: 1, child: _img(_foto[8])),
            ],
          ),
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