import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:memory_extreme_app/home_page.dart';
import 'package:memory_extreme_app/pages/instrucoes.dart';

class Palavras extends StatefulWidget {


  @override
  _PalavrasState createState() => _PalavrasState();
}

class _PalavrasState extends State<Palavras>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Palavras"),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 40),
      width: size.width,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
        Expanded(flex: 5, child: Text("Memorize essa palavra: ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ))),
          Expanded(flex: 6, child: Text(Categoria().frutas[0], style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold)), ),
          Expanded(flex: 0, child: _button(context, "Avançar")),
        Expanded(flex: 1, child: Text(" ", style: TextStyle(color: Colors.white)
        )),
        ],
      ),
    );
  }

  _button(context, String text) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.purple
        ),
        child: Text(text, style: TextStyle(color: Colors.white)),
        onPressed: () {
          setState(() {
            _onClickAvancar(context);
          });
        }
    );
  }

  _onClickAvancar(context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return Categoria();
    }));
  }
}
class OpcoesPalavras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: _body(context),

    );
  }

  _body(context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      padding: EdgeInsets.only(top: 40),
      width: size.width,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(flex: 1, child: Text(
              "O que você gostaria de fazer?",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,

              ))),
          Expanded(flex: 0, child: _button(context, "   Ir para o Jogo   ", () => _onClickNavigator(context, Palavras()))),
          Expanded(flex: 0, child: _button(context, "Ir para Instruções", () => _onClickNavigator(context, palavras(context)))),
          Expanded(flex: 3, child: Text(
              " ",
              style: TextStyle(fontSize: 200,
                  color: Colors.white,
                  fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }

  _button(context, String text, Function onPressed) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.purple
        ),
        child: Text(text, style: TextStyle(color: Colors.white)),
        onPressed: onPressed
    );
  }

  void _onClickNavigator(BuildContext context, Widget homePage) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return homePage;
    }));
  }

  Widget palavras(context) {
    return InstrucoesPalavras();

  }

}

class Categoria extends StatelessWidget {

  List<String> clicadas = [];

  List<String> _frutas = ['Maçã', 'Mamão', 'Abacaxi', 'Pêra', 'Uva', 'Manga',
    'Goiaba', 'Banana', 'Laranja', 'Limão', 'Abacate', 'Pêssego', 'Melância',
    'Melão', 'Maracujá', 'Morango', 'Jamelão', 'Jambo', 'Kiwi',
    'Tangerina', 'Ameixa', 'Carambola', 'Amora', 'Romã', 'Pitaya'
  ];

  List<String> _profissao = ['Advogado', 'Bombeiro', 'Mecânico', 'Cabeleireiro',
    'Vendedor', 'Professor', 'Empresário', 'Policial', 'Juiz', 'Motorista',
    'Enfermeiro', 'Médico', 'Veterinário', 'Psicólogo', 'Segurança',
    'Faxineira', 'Engenheiro', 'Arquiteto', 'Farmacêutico', 'Dentista',
    'Contador', 'Fotógrafo', 'Pedreiro', 'Padeiro', 'Marceneiro'
  ];

  List<String> _veiculos = ['Carro', 'Avião', 'Moto', 'Bicicleta', 'Trator',
    'Foguete', 'Caminhão', 'Navio', 'Barco', 'Lancha', 'Caminhonete',
    'Monomotor', 'Triciclo', 'Retroescavadeira', 'Jetsky', 'Caiaque',
    'Helicóptero', 'ônibus', 'Trem',  'Metrô', 'Bondinho', 'Teleférico',
    'Carroça', 'Charrete', 'Reboque'
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
    var palavrasSelecionadas = categoriaEmbaralhada.take(9).toList();

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
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.purple, minimumSize: Size(100, 50), side: BorderSide()),
                  onPressed: () {
                    clicadas.add("${palavrasSelecionadas[0]}");
                    _verificarPalavras(context);
                    enabled:
                    true;
                  },
                  child: Text("${palavrasSelecionadas[0]}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.white))),
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.purple, minimumSize: Size(100, 50), side: BorderSide()),
                  onPressed: () {
                    clicadas.add("${palavrasSelecionadas[1]}");
                    _verificarPalavras(context);
                    enabled:
                    true;
                  },
                  child: Text("${palavrasSelecionadas[1]}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.white))),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.purple, minimumSize: Size(100, 50), side: BorderSide()),
                  onPressed: () {
                    clicadas.add("${palavrasSelecionadas[2]}");
                    _verificarPalavras(context);
                    enabled:
                    true;
                  },
                  child: Text("${palavrasSelecionadas[2]}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.white))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.purple, minimumSize: Size(100, 50), side: BorderSide()),
                  onPressed: () {
                    clicadas.add("${palavrasSelecionadas[3]}");
                    _verificarPalavras(context);
                    enabled:
                    true;
                  },
                  child: Text("${palavrasSelecionadas[3]}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.white))),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.purple, minimumSize: Size(100, 50), side: BorderSide()),
                  onPressed: () {
                    clicadas.add("${palavrasSelecionadas[4]}");
                    _verificarPalavras(context);
                    enabled:
                    true;
                  },
                  child: Text("${palavrasSelecionadas[4]}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.white))),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.purple, minimumSize: Size(100, 50), side: BorderSide()),
                  onPressed: () {
                    clicadas.add("${palavrasSelecionadas[5]}");
                    _verificarPalavras(context);
                    enabled:
                    true;
                  },
                  child: Text("${palavrasSelecionadas[5]}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.white))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.purple, minimumSize: Size(100, 50), side: BorderSide()),
                  onPressed: () {
                    clicadas.add("${palavrasSelecionadas[6]}");
                    _verificarPalavras(context);
                    enabled:
                    true;
                  },
                  child: Text("${palavrasSelecionadas[6]}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.white))),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.purple, minimumSize: Size(100, 50), side: BorderSide()),
                  onPressed: () {
                    clicadas.add("${palavrasSelecionadas[7]}");
                    _verificarPalavras(context);
                    enabled:
                    true;
                  },
                  child: Text("${palavrasSelecionadas[7]}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.white))),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.purple, minimumSize: Size(100, 50), side: BorderSide()),
                  onPressed: () {
                    clicadas.add("${palavrasSelecionadas[8]}");
                    _verificarPalavras(context);
                    enabled:
                    true;
                  },
                  child: Text("${palavrasSelecionadas[8]}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.white))),
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

  _verificarPalavras(BuildContext context) {
    if( clicadas.contains(frutas) ) {
      _palavrasCorretas(context);
      print("Contém");
    }else{
      _palavrasErradas(context);
    }
  }

  _palavrasCorretas(context){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            title: Text("Parabéns você acertou todas as palavras"),
            actions: <Widget>[
              TextButton(
                child: Text("Continuar"),
                onPressed: () {
                  _onClickNavigator(context, Palavras());
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
  _palavrasErradas(context) {
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
                  _onClickNavigator(context, Palavras());
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

