import 'package:flutter/material.dart';
import 'package:memory_extreme_app/home_page.dart';
import 'package:memory_extreme_app/pages/jogo_figuras.dart';

class Imagens extends StatefulWidget {
  List<String> figuras;
  List<String> clicadas = [];

  Imagens(this.figuras);


  @override
  _ImagensState createState() => _ImagensState();
}

class _ImagensState extends State<Imagens> {
  @override
  Widget build(BuildContext context) {
    List<String> memorizadas = ['${widget.figuras[0]}, ${widget.figuras[1]}'];
    List<String> imagensSelecionadas = widget.figuras.take(9).toList();
    imagensSelecionadas..shuffle();

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
                    widget.clicadas.add("${imagensSelecionadas[0]}");
                    _verificarImagens(context);
                    print(widget.clicadas);
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
                    widget.clicadas.add("${imagensSelecionadas[1]}");
                    _verificarImagens(context);
                    print(widget.clicadas);
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
                    widget.clicadas.add("${imagensSelecionadas[2]}");
                    _verificarImagens(context);
                    print(widget.clicadas);
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
                    widget.clicadas.add("${imagensSelecionadas[3]}");
                    _verificarImagens(context);
                    print(widget.clicadas);
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
                    widget.clicadas.add("${imagensSelecionadas[4]}");
                    _verificarImagens(context);
                    print(widget.clicadas);
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
                    widget.clicadas.add("${imagensSelecionadas[5]}");
                    _verificarImagens(context);
                    print(widget.clicadas);
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
                    widget.clicadas.add("${imagensSelecionadas[6]}");
                    _verificarImagens(context);
                    print(widget.clicadas);
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
                    widget.clicadas.add("${imagensSelecionadas[7]}");
                    _verificarImagens(context);
                    print(widget.clicadas);
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
                    widget.clicadas.add("${imagensSelecionadas[8]}");
                    _verificarImagens(context);
                    print(widget.clicadas);
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

  _verificarImagens(BuildContext context) {
    if( widget.clicadas.contains(widget.figuras) ) {

      _imagensCorretas(context);
      print("Contém");
    }else{
      _imagensErradas(context);
    }
  }

    _imagensCorretas(context){
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              title: Text("Parabéns você acertou todas as figuras"),
              actions: <Widget>[
                TextButton(
                  child: Text("Continuar"),
                  onPressed: () {
                    _onClickNavigator(context, Figuras());
                  },
                ),
                TextButton(
                  child: Text("Sair"),
                  onPressed: () {
                    _onClickNavigator(context, HomePage());
                    print("OK !!!");
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
              title: Text("Uma pena você errou!"),
              actions: <Widget>[
                TextButton(
                  child: Text("Recomeçar"),
                  onPressed: () {
                    _onClickNavigator(context, Figuras());
                  },
                ),
                TextButton(
                  child: Text("Sair"),
                  onPressed: () {
                    _onClickNavigator(context, HomePage());
                    print("OK !!!");
                  },
                )
              ],
            ),
          );
        },
      );
    }

  void _onClickNavigator(BuildContext context, Widget homePage) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return homePage;
    }));
  }
}
