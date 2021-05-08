import 'dart:math';

import 'package:flutter/material.dart';

class Sorteio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(context) {
    var frutas = [
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

    var profissao = [
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

    var veiculos = [
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

    var categorias = [frutas, veiculos, profissao];

    var categoria = getRadomElement(categorias);
    print(categoria);
  }

  getRadomElement(List<List<String>> categorias) {
    final random = new Random();
    var i = random.nextInt(categorias.length);
    return categorias[i];
  }
}
