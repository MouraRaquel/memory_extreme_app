import 'package:flutter/material.dart';

class Imagens extends StatefulWidget {
  List<String> imagens;
  List<String> imagensSelecionadas;

  Imagens (this.imagens, this.imagensSelecionadas);

  @override
  _ImagensState createState() => _ImagensState();
}

class _ImagensState extends State<Imagens> {

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(2),
      //width: size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(flex: 1, child: _img(widget.imagensSelecionadas[0])),
              Expanded(flex: 1, child: _img(widget.imagensSelecionadas[1])),
              Expanded(flex: 1, child: _img(widget.imagensSelecionadas[2])),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(flex: 1, child: _img(widget.imagensSelecionadas[3])),
              Expanded(flex: 1, child: _img(widget.imagensSelecionadas[4])),
              Expanded(flex: 1, child: _img(widget.imagensSelecionadas[5])),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(flex: 1, child: _img(widget.imagensSelecionadas[6])),
              Expanded(flex: 1, child: _img(widget.imagensSelecionadas[7])),
              Expanded(flex: 1, child: _img(widget.imagensSelecionadas[8])),
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
