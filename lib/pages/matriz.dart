import 'package:flutter/material.dart';
import 'package:memory_extreme_app/home_page.dart';
import 'package:memory_extreme_app/pages/jogo_figuras.dart';

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

    String clicadas;
    String memorizadas = widget.imagens[0];
    String memorizadas2 = widget.imagens[1];
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

    _verificarImagens(BuildContext context) {
      if( clicadas.contains(memorizadas) || clicadas.contains(memorizadas2)) {
        _imagensCorretas(context);
        print("Contém");
      }else{
        _imagensErradas(context);
        print("Não Contém");
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
                    clicadas = imagensSelecionadas[0];
                    _verificarImagens(context);
                    print(clicadas);
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
                    clicadas = imagensSelecionadas[1];
                    _verificarImagens(context);
                    print(clicadas);
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
                    clicadas = imagensSelecionadas[2];
                    _verificarImagens(context);
                    print(clicadas);
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
                    clicadas = imagensSelecionadas[3];
                    _verificarImagens(context);
                    print(clicadas);
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
                    clicadas = imagensSelecionadas[4];
                    _verificarImagens(context);
                    print(clicadas);
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
                    clicadas = imagensSelecionadas[5];
                    _verificarImagens(context);
                    print(clicadas);
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
                    clicadas = imagensSelecionadas[6];
                    _verificarImagens(context);
                    print(clicadas);
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
                    clicadas = imagensSelecionadas[7];
                    _verificarImagens(context);
                    print(clicadas);
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
                    clicadas = imagensSelecionadas[8];
                    _verificarImagens(context);
                    print(clicadas);
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
