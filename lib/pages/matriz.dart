import 'package:flutter/material.dart';
import 'package:memory_extreme_app/main.dart';
import 'package:memory_extreme_app/pages/jogo_figuras.dart';
import 'package:memory_extreme_app/pages/jogos.dart';

class Imagens extends StatefulWidget {
  List<String> imagens;
  List<String> imagensSelecionadas;
  int contador, tamanho;

  Imagens(this.imagens, this.contador, this.tamanho);

  @override
  _ImagensState createState() => _ImagensState();
}

class _ImagensState extends State<Imagens> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onBackPressed,
        child: Scaffold(
          body: _body(context),
        ));
  }

  _body(context) {

    String clicked;
    List<String> memorized = [];
    int i = 0;
    while (widget.tamanho != memorized.length){
      memorized.add(widget.imagens[i]);
      i++;
    }

    List<String> imagensSelecionadas =
        widget.imagens.take(widget.contador).toList();
    widget.contador += 3;
    imagensSelecionadas..shuffle();

    _verificaNivel(context) {
      if (widget.contador > 24) {
        return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
                title: Text("Parabéns você completou o jogo!!",
                    textAlign: TextAlign.center),
                actions: <Widget>[
                  TextButton(
                      child: Text("Jogar Novamente"),
                      onPressed: () {
                        _onClickNavigator(context, Figuras(9, 2));
                      }),
                  TextButton(
                      child: Text("Sair do Jogo"),
                      onPressed: () {
                        _onClickNavigator(context, Jogos());
                      })
                ]));
      } else {
        return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              title: Text("Parabéns você acertou todas as figuras!!",
                  textAlign: TextAlign.center),
              actions: <Widget>[
                TextButton(
                  child: Text("Continuar"),
                  onPressed: () {
                    _onClickNavigator(
                        context, Figuras(widget.contador, widget.tamanho));
                  },
                ),
                TextButton(
                  child: Text("Sair do Jogo"),
                  onPressed: () {
                    _onClickNavigator(context, Jogos());
                  },
                )
              ],
            ));
      }
    }

    _imagensCorretas(context) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return _verificaNivel(context);
        },
      );
    }

    _imagensErradas(context) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              title: Text("Uma pena você errou! Quer tentar de novo?",
                  textAlign: TextAlign.center),
              actions: <Widget>[
                TextButton(
                  child: Text("Tentar de Novo"),
                  onPressed: () {
                    _onClickNavigator(context,
                        Figuras(widget.contador -= 3, widget.tamanho -= 1));
                  },
                ),
                TextButton(
                  child: Text("Sair do Jogo"),
                  onPressed: () {
                    _onClickNavigator(context, Jogos());
                  },
                )
              ],
            ),
          );
        },
      );
    }

    List<String> clicadas = [];

    _verificarImagens(BuildContext context) {
      if (memorized.contains(clicked)) {
        if (clicadas.contains(clicked)) {
        } else {
          clicadas.add(clicked);
          if (memorized.length == clicadas.length) {
            _imagensCorretas(context);
          }
        }
      } else {
        _imagensErradas(context);
      }
    }

    int num = 0;

    _linhas(num) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white),
              onPressed: () {
                clicked = imagensSelecionadas[num];
                _verificarImagens(context);
                enabled:
                true;
              },
              child: Image(
                width: 75,
                height: 75,
                image: AssetImage(imagensSelecionadas[num]),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white),
              onPressed: () {
                clicked = imagensSelecionadas[num + 1];
                _verificarImagens(context);
                enabled:
                true;
              },
              child: Image(
                width: 75,
                height: 75,
                image: AssetImage(imagensSelecionadas[num + 1]),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white),
              onPressed: () {
                clicked = imagensSelecionadas[num + 2];
                _verificarImagens(context);
                enabled:
                true;
              },
              child: Image(
                width: 75,
                height: 75,
                image: AssetImage(imagensSelecionadas[num + 2]),
              )),
        ],
      );
    }

    _defineMatriz(imagensSelecionadas) {
      if (widget.tamanho == 2) {
        widget.tamanho += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linhas(num),
            _linhas(num += 3),
            _linhas(num += 3),
          ],
        );
      }
      if (widget.tamanho == 3) {
        widget.tamanho += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linhas(num),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
          ],
        );
      }
      if (widget.tamanho == 4) {
        widget.tamanho += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linhas(num),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
          ],
        );
      }
      if (widget.tamanho == 5) {
        widget.tamanho += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linhas(num),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
          ],
        );
      }
      if (widget.tamanho == 6) {
        widget.tamanho += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linhas(num),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
          ],
        );
      }
      if (widget.tamanho == 7) {
        widget.tamanho += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linhas(num),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
          ],
        );
      }
    }

    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(2),
      width: size.width,
      color: Colors.white,
      child: _defineMatriz(imagensSelecionadas),
    );
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

void _onClickNavigator(BuildContext context, Widget homePage) {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return homePage;
  }));
}
