import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:memory_extreme_app/home_page.dart';
import 'package:memory_extreme_app/main.dart';
import 'package:memory_extreme_app/pages/drawer_list.dart';
import 'package:memory_extreme_app/pages/instrucoes.dart';

class Palavras extends StatefulWidget {
  List<String> listaCategoriaEscolhida;

  @override
  _PalavrasState createState() => _PalavrasState();
}

class _PalavrasState extends State<Palavras> {
  List<String> frutas = [
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

  List<String> profissao = [
    'Advogado',
    'Bombeiro',
    'Mecânico',
    'Porteiro',
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
    'Manicure',
    'Dentista',
    'Contador',
    'Fotógrafo',
    'Pedreiro',
    'Padeiro',
    'Marceneiro'
  ];

  List<String> veiculos = [
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
    'Jatinho',
    'Monomotor',
    'Triciclo',
    'Van',
    'Jetsky',
    'Caiaque',
    'Helicóptero',
    'Ônibus',
    'Trem',
    'Metrô',
    'Bondinho',
    'Teleférico',
    'Carroça',
    'Charrete',
    'Reboque'
  ];

  List<String> listaCategoriaEscolhida;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onBackPressed,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Palavras"),
          ),
          body: _body(context),
          drawer: DrawerList(),
        ));
  }

  _body(context) {
    var categorias = [frutas, veiculos, profissao];
    final _random = new Random();
    var palavrasSelecionadas = categorias[_random.nextInt(categorias.length)]
      ..shuffle();
    print("Selecionadas: $palavrasSelecionadas");
    palavrasSelecionadas..shuffle();
    listaCategoriaEscolhida = palavrasSelecionadas.take(9).toList();
    print("Essa é a lista da categoria escolhida:");
    print(listaCategoriaEscolhida);

    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 40),
      width: size.width,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
              flex: 5,
              child: Text("Memorize essa palavra: ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ))),
          Expanded(
            flex: 6,
            child: Text(listaCategoriaEscolhida[0],
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          Expanded(flex: 1, child: _button(context, "Avançar")),
          Expanded(
              flex: 1, child: Text(" ", style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }

  _button(context, String text) {
    return TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.purple),
        child: Text(text, style: TextStyle(color: Colors.white)),
        onPressed: () {
          _onClickAvancar(context);
        });
  }

  _onClickAvancar(context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return Categoria(listaCategoriaEscolhida);
    }));
  }

  Future<bool> _onBackPressed() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text(
              'Tem certeza que gostaria de sair do Jogo?',
              textAlign: TextAlign.center,
            ),
            content: new Text(
              'Você irá voltar para a página inicial',
              textAlign: TextAlign.center,
            ),
            actions: <Widget>[
              new TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('Não'),
              ),
              new TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: new Text('Sim'),
              ),
            ],
          ),
        ) ??
        false;
  }
}

class Categoria extends StatefulWidget {
  List<String> categoria;

  Categoria(this.categoria);

  @override
  _CategoriaState createState() => _CategoriaState();
}

class _CategoriaState extends State<Categoria> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onBackPressed,
        child: Scaffold(
          body: _body(context),
        ));
  }

  _body(context) {
    String clicada;
    List<String> palavrasDaMatriz;
    print(widget.categoria);
    print(palavrasDaMatriz);
    palavrasDaMatriz = widget.categoria..shuffle();
    print("Embaralhadas: $palavrasDaMatriz");

    var _estiloBotao = (ElevatedButton.styleFrom(
        primary: Colors.purple, minimumSize: Size(110, 50)));
    var _fontes = TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);

    _palavrasCorretas(context) {
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

    String apresentadas = widget.categoria[0];
    int contador = 0;
    List<String> clicadas = [];
    _verificarPalavras(BuildContext context) {
      if (apresentadas.contains(clicada)) {
        clicadas.add(clicada);
        print("Clicadas: $clicadas");
        _palavrasCorretas(context);
        print("Contém");
      } else {
        _palavrasErradas(context);
      }
    }

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
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                TextButton(
                    style: _estiloBotao,
                    onPressed: () {
                      clicada = palavrasDaMatriz[0];
                      print(clicada);
                      _verificarPalavras(context);
                    },
                    child: Text(palavrasDaMatriz[0],
                        textAlign: TextAlign.center, style: _fontes)),
                TextButton(
                    style: _estiloBotao,
                    onPressed: () {
                      clicada = palavrasDaMatriz[1];
                      _verificarPalavras(context);
                    },
                    child: Text(palavrasDaMatriz[1],
                        textAlign: TextAlign.center, style: _fontes)),
                TextButton(
                    style: _estiloBotao,
                    onPressed: () {
                      clicada = palavrasDaMatriz[2];
                      _verificarPalavras(context);
                    },
                    child: Text(palavrasDaMatriz[2],
                        textAlign: TextAlign.center, style: _fontes)),
              ]),
          Text("", style: TextStyle(color: Colors.white)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              TextButton(
                  style: _estiloBotao,
                  onPressed: () {
                    clicada = palavrasDaMatriz[3];
                    _verificarPalavras(context);
                  },
                  child: Text(palavrasDaMatriz[3],
                      textAlign: TextAlign.center, style: _fontes)),
              TextButton(
                  style: _estiloBotao,
                  onPressed: () {
                    clicada = palavrasDaMatriz[4];
                    _verificarPalavras(context);
                  },
                  child: Text(palavrasDaMatriz[4],
                      textAlign: TextAlign.center, style: _fontes)),
              TextButton(
                  style: _estiloBotao,
                  onPressed: () {
                    clicada = palavrasDaMatriz[5];
                    _verificarPalavras(context);
                  },
                  child: Text(palavrasDaMatriz[5],
                      textAlign: TextAlign.center, style: _fontes)),
            ],
          ),
          Text("", style: TextStyle(color: Colors.white)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              TextButton(
                  style: _estiloBotao,
                  onPressed: () {
                    clicada = palavrasDaMatriz[6];
                    _verificarPalavras(context);
                  },
                  child: Text(palavrasDaMatriz[6],
                      textAlign: TextAlign.center, style: _fontes)),
              TextButton(
                  style: _estiloBotao,
                  onPressed: () {
                    clicada = palavrasDaMatriz[7];
                    _verificarPalavras(context);
                  },
                  child: Text(palavrasDaMatriz[7],
                      textAlign: TextAlign.center, style: _fontes)),
              TextButton(
                  style: _estiloBotao,
                  onPressed: () {
                    clicada = palavrasDaMatriz[8];
                    _verificarPalavras(context);
                  },
                  child: Text(palavrasDaMatriz[8],
                      textAlign: TextAlign.center, style: _fontes)),
            ],
          ),
        ],
      ),
    );
  }

  Future<bool> _onBackPressed() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text(
              'Tem certeza que gostaria de sair do Jogo?',
              textAlign: TextAlign.center,
            ),
            content: new Text(
              'Você irá voltar para a página inicial',
              textAlign: TextAlign.center,
            ),
            actions: <Widget>[
              new TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('Não'),
              ),
              new TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: new Text('Sim'),
              ),
            ],
          ),
        ) ??
        false;
  }

  void _onClickNavigator(BuildContext context, Widget homePage) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return homePage;
    }));
  }
}

class OpcoesPalavras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
          Expanded(
              flex: 1,
              child: Text("O que você gostaria de fazer?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ))),
          Expanded(
              flex: 0,
              child: _button(context, "   Ir para o Jogo   ",
                  () => _onClickNavigator(context, Palavras()))),
          Expanded(
              flex: 0,
              child: _button(context, "Ir para Instruções",
                  () => _onClickNavigator(context, palavras(context)))),
          Expanded(
              flex: 3,
              child: Text(" ",
                  style: TextStyle(
                      fontSize: 200,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }

  _button(context, String text, Function onPressed) {
    return TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.purple),
        child: Text(text, style: TextStyle(color: Colors.white)),
        onPressed: onPressed);
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
