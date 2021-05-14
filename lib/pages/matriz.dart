import 'package:flutter/material.dart';

class Imagens extends StatefulWidget {

  List<String> imagens;
  List<String> clicadas = [];

  Imagens (this.imagens);

  @override
  _ImagensState createState() => _ImagensState();
}

class _ImagensState extends State<Imagens> {

  @override
  Widget build(BuildContext context) {

    List<String> memorizadas = ['${widget.imagens[0]}, ${widget.imagens[1]}'];
    List<String> imagensSelecionadas = widget.imagens.take(9).toList();
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
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white
                  ),
                  onPressed: () {widget.clicadas.add("${imagensSelecionadas[0]}");
                  print(widget.clicadas);
                  enabled: true;},
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[0]),
                  )
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white
                  ),
                  onPressed: () {
                    widget.clicadas.add("${imagensSelecionadas[1]}");
                    print(widget.clicadas);
                    enabled: true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[1]),
                  )
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white
                  ),
                  onPressed: () {
                    widget.clicadas.add("${imagensSelecionadas[2]}");
                    print(widget.clicadas);
                    enabled: true;
                  },
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[2]),
                  )
              ),],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white
                  ),
                  onPressed: () {widget.clicadas.add("${imagensSelecionadas[3]}");
                  print(widget.clicadas);
                  enabled: true;},
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[3]),
                  )
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white
                  ),
                  onPressed: () {widget.clicadas.add("${imagensSelecionadas[4]}");
                  print(widget.clicadas);
                  enabled: true;},
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[4]),
                  )
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white
                  ),
                  onPressed: () {widget.clicadas.add("${imagensSelecionadas[5]}");
                  print(widget.clicadas);
                  enabled: true;},
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[5]),
                  )
              ),],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white
                  ),
                  onPressed: () {widget.clicadas.add("${imagensSelecionadas[6]}");
                  print(widget.clicadas);
                  enabled: true;},
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[6]),
                  )
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white
                  ),
                  onPressed: () {widget.clicadas.add("${imagensSelecionadas[7]}");
                  print(widget.clicadas);
                  enabled: true;},
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[7]),
                  )
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white
                  ),
                  onPressed: () {widget.clicadas.add("${imagensSelecionadas[8]}");
                  print(widget.clicadas);
                  enabled: true;},
                  child: Image(
                    width: 75,
                    height: 75,
                    image: AssetImage(imagensSelecionadas[8]),
                  )
              ),],),     ],
      ),);
  }

}