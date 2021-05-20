import 'package:flutter/material.dart';
import 'package:memory_extreme_app/home_page.dart';
import 'package:memory_extreme_app/pages/jogo_figuras.dart';

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

    String clicada;
    List<String> memorizadas = [];
    int i = 0;
    do {
      memorizadas.add(widget.imagens[i]);
      i++;
    } while (widget.tamanho != memorizadas.length);

    List<String> imagensSelecionadas =
        widget.imagens.take(widget.contador).toList();

    widget.contador += 3;


    imagensSelecionadas..shuffle();

    _imagensCorretas(context) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
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
            ),
          );
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
                  child: Text("Recomeçar"),
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
      if (memorizadas.contains(clicada)) {
        if (clicadas.contains(clicada)) {
        } else {
          clicadas.add(clicada);
          if (memorizadas.length == clicadas.length) {
            _imagensCorretas(context);
          }
        }
      } else {
        _imagensErradas(context);
      }
    }

    matriz3x3(imagensSelecionadas) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[0];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[0]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[1];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[1]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[2];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[2]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[3];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[3]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[4];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[4]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[5];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[5]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[6];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[6]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    clicada = imagensSelecionadas[7];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[7]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[8];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[8]),
                  )),
            ],
          ),
        ],
      );
    }
    matriz4x3(imagensSelecionadas) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[0];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[0]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[1];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[1]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[2];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[2]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[3];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[3]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[4];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[4]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[5];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[5]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[6];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[6]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    clicada = imagensSelecionadas[7];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[7]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[8];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[8]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[9];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[9]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    clicada = imagensSelecionadas[10];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[10]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[11];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[11]),
                  )),
            ],
          ),
        ],
      );
    }
    matriz5x3(imagensSelecionadas) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[0];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[0]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[1];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[1]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[2];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[2]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[3];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[3]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[4];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[4]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[5];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[5]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[6];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[6]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    clicada = imagensSelecionadas[7];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[7]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[8];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[8]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[9];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[9]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    clicada = imagensSelecionadas[10];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[10]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[11];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[11]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[12];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[12]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    clicada = imagensSelecionadas[13];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[13]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[14];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[14]),
                  )),
            ],
          ),
        ],
      );
    }
    matriz6x3(imagensSelecionadas) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[0];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[0]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[1];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[1]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[2];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[2]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[3];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[3]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[4];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[4]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[5];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[5]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[6];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[6]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    clicada = imagensSelecionadas[7];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[7]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[8];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[8]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[9];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[9]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    clicada = imagensSelecionadas[10];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[10]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[11];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[11]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[12];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[12]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    clicada = imagensSelecionadas[13];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[13]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[14];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[14]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[15];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[15]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[16];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[16]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[17];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[17]),
                  )),
            ],
          ),
        ],
      );
    }
    matriz7x3(imagensSelecionadas) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[0];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[0]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[1];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[1]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[2];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[2]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[3];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[3]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[4];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[4]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[5];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[5]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[6];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[6]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    clicada = imagensSelecionadas[7];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[7]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[8];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[8]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[9];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[9]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    clicada = imagensSelecionadas[10];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[10]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[11];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[11]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[12];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[12]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    clicada = imagensSelecionadas[13];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[13]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[14];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[14]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[15];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[15]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[16];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[16]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[17];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[17]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[18];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[18]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[19];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[19]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[20];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[20]),
                  )),
            ],
          ),
        ],
      );
    }
    matriz8x3(imagensSelecionadas) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[0];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[0]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[1];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[1]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[2];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[2]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[3];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[3]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[4];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[4]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[5];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[5]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[6];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[6]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    clicada = imagensSelecionadas[7];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[7]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[8];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[8]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[9];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[9]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    clicada = imagensSelecionadas[10];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[10]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[11];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[11]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[12];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[12]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    clicada = imagensSelecionadas[13];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[13]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[14];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[14]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[15];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[15]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[16];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[16]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[17];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[17]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[18];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[18]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[19];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[19]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[20];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[20]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[21];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[21]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[22];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[22]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    clicada = imagensSelecionadas[23];
                    _verificarImagens(context);
                    enabled:
                    true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[23]),
                  )),
            ],
          ),
        ],
      );
    }


    _defineMatriz(imagensSelecionadas){
      if (widget.tamanho == 2) {
        widget.tamanho += 1;
        return matriz3x3(imagensSelecionadas);
      }
      if (widget.tamanho == 3) {
        widget.tamanho += 1;
        return matriz4x3(imagensSelecionadas);
      }
      if (widget.tamanho == 4) {
        widget.tamanho += 1;
        return matriz5x3(imagensSelecionadas);
      }
      if (widget.tamanho == 5) {
        widget.tamanho += 1;
        return matriz6x3(imagensSelecionadas);
      }
      if (widget.tamanho == 6) {
        widget.tamanho += 1;
        return matriz7x3(imagensSelecionadas);
      }
      if (widget.tamanho == 7) {
        widget.tamanho += 1;
        return matriz8x3(imagensSelecionadas);
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

  void _onClickNavigator(BuildContext context, Widget homePage) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return homePage;
    }));
  }
}
