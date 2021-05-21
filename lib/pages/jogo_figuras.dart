import 'dart:async';

import 'package:flutter/material.dart';
import 'package:memory_extreme_app/home_page.dart';
import 'package:memory_extreme_app/main.dart';
import 'package:memory_extreme_app/pages/instrucoes.dart';
import 'package:memory_extreme_app/pages/matriz.dart';

class Figuras extends StatefulWidget {
  List<String> imagens;
  int contador, tamanho;

  Figuras(this.contador, this.tamanho);

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

  // int cronometro = 10;
  // Timer timer;
  //
  // @override
  // startTimer(){
  //
  //   timer = Timer.periodic(Duration(seconds: 1), (Timer timer){
  //     setState(() {
  //       if (cronometro > 0){
  //         cronometro --;
  //       } else{
  //         timer.cancel();
  //         _onClickAvancar(context);
  //       }
  //     });
  //   });
  // }
  //
  // void initState(){
  //   super.initState();
  //   startTimer();
  // }
  //
  // @override
  // void dispose(){
  //   super.dispose();
  //
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onBackPressed,
        child: Scaffold(
      appBar: AppBar(
        title: Text("Figuras"),
      ),
      body: _body(context),
    ));
  }


  int num = 0;

  _linhas(memorizar){
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Expanded(flex: 1, child: _img(memorizar[num])),
      Expanded(flex: 1, child: _img(memorizar[num+1]))
    ]);
  }

  duasImagens(memorizar) {
    return _linhas(memorizar);
  }
  tresImagens(memorizar) {
    return Column(children: <Widget>[
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(flex: 1, child: _img(memorizar[0])),
            Expanded(flex: 1, child: _img(memorizar[1])),
          ]),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(flex: 1, child: _img(memorizar[2])),
          ])
    ]);
  }
  quatroImagens(memorizar) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Expanded(flex: 0, child: _img(memorizar[0])),
            Expanded(flex: 0, child: _img(memorizar[1])),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Expanded(flex: 0, child: _img(memorizar[2])),
            Expanded(flex: 0, child: _img(memorizar[3])),
          ]),
        ]);
  }
  cincoImagens(memorizar) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Expanded(flex: 0, child: _img(memorizar[0])),
            Expanded(flex: 0, child: _img(memorizar[1])),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Expanded(flex: 0, child: _img(memorizar[2])),
            Expanded(flex: 0, child: _img(memorizar[3])),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Expanded(flex: 1, child: _img(memorizar[4])),
          ]),
        ]);
  }
  seisImagens(memorizar) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Expanded(flex: 0, child: _img(memorizar[0])),
            Expanded(flex: 0, child: _img(memorizar[1])),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Expanded(flex: 0, child: _img(memorizar[2])),
            Expanded(flex: 0, child: _img(memorizar[3])),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Expanded(flex: 0, child: _img(memorizar[4])),
            Expanded(flex: 0, child: _img(memorizar[5])),
          ]),
        ]);
  }
  seteImagens(memorizar) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Expanded(flex: 0, child: _img(memorizar[0])),
            Expanded(flex: 0, child: _img(memorizar[1])),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Expanded(flex: 0, child: _img(memorizar[2])),
            Expanded(flex: 0, child: _img(memorizar[3])),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Expanded(flex: 0, child: _img(memorizar[4])),
            Expanded(flex: 0, child: _img(memorizar[5])),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Expanded(flex: 0, child: _img(memorizar[6])),
          ]),
        ]);
  }

  _defineQuantidade(memorizar) {

    if (widget.tamanho == 2) {
      return duasImagens(memorizar);
    }
    if (widget.tamanho == 3) {
      return tresImagens(memorizar);
    }
    if (widget.tamanho == 4) {
      return quatroImagens(memorizar);
    }
    if (widget.tamanho == 5) {
      return cincoImagens(memorizar);
    }
    if (widget.tamanho == 6) {
      return seisImagens(memorizar);
    }
    if (widget.tamanho == 7) {
      return seteImagens(memorizar);
    }
  }

  _body(context) {
    imagens..shuffle();
    List<String> memorizar = imagens.take(widget.contador).toList();

    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      width: size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
              flex: 0,
              child: Text("Memorize essas figuras: ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ))),
          Expanded(
              flex: 1, child: Text(" ", style: TextStyle(color: Colors.white))),
          _defineQuantidade(memorizar),
          Expanded(
              flex: 1, child: Text(" ", style: TextStyle(color: Colors.white))),
          Expanded(flex: 0, child: _button(context, "Avançar")),

          //Expanded(flex: 1, child: Text('$cronometro', style: TextStyle(color: Colors.purple, fontSize: 50))),
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
        style: TextButton.styleFrom(backgroundColor: Colors.purple),
        child: Text(text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        onPressed: () {
          _onClickAvancar(context);
        });
  }

  _onClickAvancar(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              Imagens(imagens, widget.contador, widget.tamanho),
        ));
  }

  Future<bool> _onBackPressed() {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Tem certeza que gostaria de sair do Jogo?', textAlign: TextAlign.center,),
        content: new Text('Você irá voltar para a página inicial', textAlign: TextAlign.center,),
        actions: <Widget>[
          new TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('Não'),
          ),
          new TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
            child: new Text('Sim'),
          ),
        ],
      ),
    ) ?? false;
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
                  () => _onClickNavigator(context, Figuras(9, 2)))),
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
    return TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.purple),
        child: Text(text, style: TextStyle(color: Colors.white)),
        onPressed: onPressed);
  }

  void _onClickNavigator(BuildContext context, Widget homePage) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return homePage;
    }));
  }

  Widget figuras(context) {
    return InstrucoesFiguras();
  }
}
