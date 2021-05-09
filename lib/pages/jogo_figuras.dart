import 'package:flutter/material.dart';

class Figuras extends StatelessWidget {

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

    List<String> imagensEmbaralhadas = imagens..shuffle();
    print(imagensEmbaralhadas[4]);
    List<String> imagensSelecionadasNivelUm = [...imagensEmbaralhadas].take(9).toList();
    print(imagensSelecionadasNivelUm);
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
          Expanded(flex: 1, child: _img('${imagensSelecionadasNivelUm[0]}')),
          Expanded(flex: 1, child: _img('${imagensSelecionadasNivelUm[1]}')),
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
      return Figuras();
    }));
  }


}

