import 'dart:async';
import 'package:flutter/material.dart';
import 'package:memory_extreme_app/main.dart';
import 'package:memory_extreme_app/pages/matriz.dart';

class Figuras extends StatefulWidget {
  List<String> imagens;
  int contador, tamanho;
  bool avancarClicked = false;

  Figuras(this.contador, this.tamanho);


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

  final StreamController _streamController = StreamController();

  addData() async {
    for (int i = 15; i <= 1; i--) {
      await Future.delayed(Duration(seconds: 1));
      _streamController.sink.add(i);
    }
  }

  Stream<int> numberStream() async* {
    for (int i = 15; i >= 1; i--) {
      await Future.delayed(Duration(seconds: 1));
      yield i;
      if (widget.avancarClicked == true) {
        _onClickAdvance(context);
      }
      if (i == 1) {
        _onClickAdvance(context);
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    _streamController.close();
  }

  @override
  void initState() {
    super.initState();
    addData();
  }

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

  _linhas(memorizar) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Expanded(flex: 1, child: _img(memorizar[num])),
      Expanded(flex: 1, child: _img(memorizar[num + 1]))
    ]);
  }

  _defineQuantidade(memorizar) {
    if (widget.tamanho == 2) {
      return _linhas(memorizar);
    }
    if (widget.tamanho == 3) {
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
    if (widget.tamanho == 4) {
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
    if (widget.tamanho == 5) {
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
    if (widget.tamanho == 6) {
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
    if (widget.tamanho == 7) {
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
  }

  _body(context) {
    imagens..shuffle();
    List<String> memorizar = imagens.take(widget.contador).toList();

    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      width: size.width,
      height: size.height,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: Text("Memorize essas figuras: ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ))),
          _defineQuantidade(memorizar),
          Expanded(
              child: StreamBuilder(
            stream: numberStream().map((number) => "$number"),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting)
                return Text("");
              return Text("${snapshot.data}",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 50,
                      fontFamily: 'SigmarOne'));
            },
          )),
          // Text(""),
          // Expanded(flex: 0, child: ElevatedButton(onPressed: (){_buttonAdvance(context, "Avançar");})),
          // Text(""),
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

  // _buttonAdvance(context, String text) {
  //   widget.avancarClicked = true;
  //   print("esse é o contador ");
  //   print(widget.avancarClicked);
  //   return TextButton(
  //       style: TextButton.styleFrom(
  //           backgroundColor: Colors.purple, minimumSize: Size(150, 50)),
  //       child: Text(text, style: TextStyle(color: Colors.white, fontSize: 30)),
  //       onPressed: () {
  //         _onClickAdvance(context);
  //       });
  // }

  _onClickAdvance(context) {
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
            title: new Text(
              'Tem certeza que gostaria de sair do Jogo?',
              textAlign: TextAlign.center,
            ),
            content: new Text(
              'Você irá voltar para a página inicial',
              textAlign: TextAlign.center,
            ),
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
        ) ??
        false;
  }
}
