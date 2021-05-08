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
    'Pedreito',
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
    var _palavrasSelecionadasNivelUm = [...categoriaEmbaralhada].take(9).toList();
    var palavrasSelecionadasNivelDois = [...categoriaEmbaralhada].take(12).toList();
    var palavrasSelecionadasNivelTres = [...categoriaEmbaralhada].take(15).toList();
    var palavrasSelecionadasNivelQuatro = [...categoriaEmbaralhada].take(18).toList();
    var palavrasSelecionadasNivelCinco = [...categoriaEmbaralhada].take(21).toList();
    var palavrasSelecionadasNivelSeis = [...categoriaEmbaralhada].take(24).toList();

    return Text("Oi",
        style: TextStyle(
          fontSize: 40,
          color: Colors.red,
          fontWeight: FontWeight.bold,));
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
