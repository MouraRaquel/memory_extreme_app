import 'package:flutter/material.dart';
import 'package:memory_extreme_app/home_page.dart';
import 'package:memory_extreme_app/pages/jogo_figuras.dart';
import 'package:memory_extreme_app/pages/jogo_figuras1.dart';

class Imagens extends StatefulWidget {

  List<String> imagens;
  List<String> imagensSelecionadas;

  Imagens(this.imagens);

  @override
  _ImagensState createState() => _ImagensState();
}

class _ImagensState extends State<Imagens> {
  @override
  Widget build(BuildContext context) {

    String clicada;
    List<String> memorizadas = [widget.imagens[0], widget.imagens[1]];
    List<String> imagensSelecionadas = widget.imagens.take(9).toList();
    imagensSelecionadas..shuffle();

    _imagensCorretas(context){
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              title: Text("Parabéns você acertou todas as figuras!!", textAlign: TextAlign.center),
              actions: <Widget>[
                TextButton(
                  child: Text("Continuar"),
                  onPressed: () {
                    _onClickNavigator(context, Figuras1());
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
              title: Text("Uma pena você errou! Quer tentar de novo?", textAlign: TextAlign.center),
              actions: <Widget>[
                TextButton(
                  child: Text("Recomeçar"),
                  onPressed: () {
                    _onClickNavigator(context, Figuras());
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

      if( memorizadas.contains(clicada) ) {

        if (clicadas.contains(clicada)){

        }else{
          clicadas.add(clicada);
          if (memorizadas.length == clicadas.length){
            _imagensCorretas(context);
          }
        }

      }else{
        _imagensErradas(context);
      }
    }

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
      ),
    );
  }

  void _onClickNavigator(BuildContext context, Widget homePage) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return homePage;
    }));
  }
}
