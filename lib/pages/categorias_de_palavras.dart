import 'dart:math';
import 'package:flutter/material.dart';

class Categoria extends StatelessWidget {
  List<String> _frutas = [
    'Maçã',
    'Mamão',
    'Abacaxi',
    'Pêra',
    'Uva',
    'Manga',
    'Goiaba',
    'Banana',
    'Laranja',
    'Limão',
    'Abacate',
    'Pêssego',
    'Melância',
    'Melão',
    'Maracujá',
    'Morango',
    'Jamelão',
    'Jambo',
    'Kiwi',
    'Tangerina',
    'Ameixa',
    'Carambola',
    'Amora',
    'Romã',
    'Pitaya'
  ];

  List<String> _profissao = [
    'Advogado',
    'Bombeiro',
    'Mecânico',
    'Cabeleireiro',
    'Vendedor',
    'Professor',
    'Empresário',
    'Policial',
    'Juiz',
    'Motorista',
    'Enfermeiro',
    'Médico',
    'Veterinário',
    'Psicólogo',
    'Segurança',
    'Faxineira',
    'Engenheiro',
    'Arquiteto',
    'Farmacêutico',
    'Dentista',
    'Contador',
    'Fotógrafo',
    'Pedreiro',
    'Padeiro',
    'Marceneiro'
  ];

  List<String> _veiculos = [
    'Carro',
    'Avião',
    'Moto',
    'Bicicleta',
    'Trator',
    'Foguete',
    'Caminhão',
    'Navio',
    'Barco',
    'Lancha',
    'Caminhonete',
    'Monomotor',
    'Triciclo',
    'Retroescavadeira',
    'Jetsky',
    'Caiaque',
    'Helicóptero',
    'ônibus',
    'Trem',
    'Metrô',
    'Bondinho',
    'Teleférico',
    'Carroça',
    'Charrete',
    'Reboque'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(context) {
    List<String> frutasEmbaralhadas = frutas..shuffle();
    print(frutasEmbaralhadas);
    var categorias = [frutas, veiculos, profissao];
    final _random = new Random();
    var categoriaSelecionada = categorias[_random.nextInt(categorias.length)];
    var categoriaEmbaralhada = (categoriaSelecionada.toList()..shuffle());
    var palavrasSelecionadasNivelUm =
        [...categoriaEmbaralhada].take(9).toList();
    var palavrasSelecionadasNivelDois =
        [...categoriaEmbaralhada].take(12).toList();
    var palavrasSelecionadasNivelTres =
        [...categoriaEmbaralhada].take(15).toList();
    var palavrasSelecionadasNivelQuatro =
        [...categoriaEmbaralhada].take(18).toList();
    var palavrasSelecionadasNivelCinco =
        [...categoriaEmbaralhada].take(21).toList();
    var palavrasSelecionadasNivelSeis =
        [...categoriaEmbaralhada].take(24).toList();

    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(2),
      width: size.width,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(flex: 1, child: Text("${palavrasSelecionadasNivelUm[0]}", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple))),
              Expanded(flex: 1, child: Text("${palavrasSelecionadasNivelUm[1]}", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple))),
              Expanded(flex: 1, child: Text("${palavrasSelecionadasNivelUm[2]}", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(flex: 1, child: Text("${palavrasSelecionadasNivelUm[3]}", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple))),
              Expanded(flex: 1, child: Text("${palavrasSelecionadasNivelUm[4]}", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple))),
              Expanded(flex: 1, child: Text("${palavrasSelecionadasNivelUm[5]}", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(flex: 1, child: Text("${palavrasSelecionadasNivelUm[6]}", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple))),
              Expanded(flex: 1, child: Text("${palavrasSelecionadasNivelUm[7]}", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple))),
              Expanded(flex: 1, child: Text("${palavrasSelecionadasNivelUm[8]}", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple))),
            ],
          ),
        ],
      ),
    );
  }

  List<String> get frutas => _frutas;

  set frutas(List<String> value) {
    _frutas = value;
  }

  List<String> get profissao => _profissao;

  set profissao(List<String> value) {
    _profissao = value;
  }

  List<String> get veiculos => _veiculos;

  set veiculos(List<String> value) {
    _veiculos = value;
  }
}
