import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:memory_extreme_app/home_page.dart';
import 'package:memory_extreme_app/main.dart';
import 'package:memory_extreme_app/pages/drawer_list.dart';
import 'package:memory_extreme_app/pages/jogos.dart';

class Palavras extends StatefulWidget {
  List<String> listaCategoriaEscolhida;
  int contador = 9;
  int qtdPalavras = 1;
  int total = 2;

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
  final StreamController _streamController = StreamController();

  addData()async{
    for(int i = 15; i<= 1; i--) {
      await Future.delayed(Duration(seconds: 1));
      _streamController.sink.add(i);
    }
  }

  Stream<int> numberStream() async*{
    for(int i = 15; i>= 1; i--) {
      await Future.delayed(Duration(seconds: 1));
      yield i;
      if(i == 1){
        _onClickAvancar(context);
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    _streamController.close();
  }

  @override
  void initState() {
    super.initState();
    addData();
  }

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

  _matriz(palavrasSelecionadas) {

    String clicada;
    List<String> embaralhadas;
    embaralhadas = palavrasSelecionadas.take(widget.contador).toList();
    embaralhadas..shuffle();

    var _estiloBotao = (ElevatedButton.styleFrom(
        primary: Colors.purple, minimumSize: Size(110, 50)));
    var _fontes = TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);

    List<String> apresentadas = [];
    int counter = 0;

    _adicionaApresentadas() {
      while (apresentadas.length < widget.qtdPalavras) {
        apresentadas.add(palavrasSelecionadas[counter]);
        counter++;
      }
    }

    _adicionaApresentadas();

    int nums = 0;

    _linha(nums) {
      return Text(palavrasSelecionadas[nums],
          style: TextStyle(
              fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold));
    }

    _qtdPalavrasApresentadas() {

      if (widget.total == 2) {
        widget.total += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linha(nums),
            _linha(nums += 1),
          ],
        );
      }
      if (widget.total == 3) {
        widget.total += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linha(nums),
            _linha(nums += 1),
            _linha(nums += 1),
          ],
        );
      }
      if (widget.total == 4) {
        widget.total += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linha(nums),
            _linha(nums += 1),
            _linha(nums += 1),
            _linha(nums += 1),
          ],
        );
      }
      if (widget.total == 5) {
        widget.total += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linha(nums),
            _linha(nums += 1),
            _linha(nums += 1),
            _linha(nums += 1),
            _linha(nums += 1),
          ],
        );
      }
      if (widget.total == 6) {
        widget.total += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linha(nums),
            _linha(nums += 1),
            _linha(nums += 1),
            _linha(nums += 1),
            _linha(nums += 1),
            _linha(nums += 1),
          ],
        );
      }
      if (widget.total == 7) {
        widget.total += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linha(nums),
            _linha(nums += 1),
            _linha(nums += 1),
            _linha(nums += 1),
            _linha(nums += 1),
            _linha(nums += 1),
            _linha(nums += 1),
          ],
        );
      }
      if (widget.total == 8) {
        widget.total += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linha(nums),
            _linha(nums += 1),
            _linha(nums += 1),
            _linha(nums += 1),
            _linha(nums += 1),
            _linha(nums += 1),
            _linha(nums += 1),
            _linha(nums += 1),
          ],
        );
      }
    }

    _novaPalavra(palavrasSelecionadas) {
      var _fontes = TextStyle(
          fontSize: 40, color: Colors.purple, fontWeight: FontWeight.bold);

      Size size = MediaQuery.of(context).size;
      return Scaffold(
          body: Container(
            padding: EdgeInsets.all(20),
            width: size.width,
            color: Colors.black,
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 0,
                    child: Text("Memorize essas palavras: ",
                        textAlign: TextAlign.center, style: _fontes)),
                Expanded(flex: 6, child: _qtdPalavrasApresentadas()),
                Text(""),
                Expanded(child: StreamBuilder(
                  stream: numberStream().map((number) => "$number"),
                  builder: (context, snapshot){
                    if (snapshot.connectionState == ConnectionState.waiting)
                      return Text("");
                    return Text("${snapshot.data}", style: TextStyle(
                        color: Colors.purple,
                        fontSize: 50,
                        fontFamily: 'SigmarOne'));
                  },
                )),
                // Text(""),
                // Expanded(flex: 0, child: _buttonAdvance(context, "Avançar")),
                // Text(""),
              ],
            ),
          ));
    }

    _verifica(context) {
      if (widget.contador > 24) {
        return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
                title: Text("Parabéns você completou o jogo!!",
                    textAlign: TextAlign.center),
                actions: <Widget>[
                  TextButton(
                      child: Text("Jogar Novamente"),
                      onPressed: () {
                        _onClickNavigator(context, Palavras());
                      }),
                  TextButton(
                      child: Text("Sair do Jogo"),
                      onPressed: () {
                        _onClickNavigator(context, Jogos());
                      })
                ]));
      } else {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            title: Text("Parabéns você acertou todas as palavras",
                textAlign: TextAlign.center),
            actions: <Widget>[
              TextButton(
                child: Text("Continuar"),
                onPressed: () {
                  _onClickNavigator(
                      context, _novaPalavra(palavrasSelecionadas));
                },
              ),
              TextButton(
                child: Text("Sair"),
                onPressed: () {
                  _onClickNavigator(context, HomePage());
                },
              )
            ],
          ),
        );
      }
    }

    _palavrasCorretas(context) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return _verifica(context);
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
                  },
                )
              ],
            ),
          );
        },
      );
    }

    int count = 0;
    List<String> clicadas = [];

    _verificarPalavras(BuildContext context) {
      clicadas.add(clicada);
      if (clicada == apresentadas[count]) {
        count++;
        if (clicadas.length == apresentadas.length){
          _palavrasCorretas(context);
        }
      } else {
        _palavrasErradas(context);
      }
    }

    int num = 0;

    _linhas(num) {
      return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            TextButton(
                style: _estiloBotao,
                onPressed: () {
                  clicada = embaralhadas[num];
                  _verificarPalavras(context);
                },
                child: Text(embaralhadas[num],
                    textAlign: TextAlign.center, style: _fontes)),
            TextButton(
                style: _estiloBotao,
                onPressed: () {
                  clicada = embaralhadas[num + 1];
                  _verificarPalavras(context);
                },
                child: Text(embaralhadas[num + 1],
                    textAlign: TextAlign.center, style: _fontes)),
            TextButton(
                style: _estiloBotao,
                onPressed: () {
                  clicada = embaralhadas[num + 2];
                  _verificarPalavras(context);
                },
                child: Text(embaralhadas[num + 2],
                    textAlign: TextAlign.center, style: _fontes)),
            Text("", style: TextStyle(color: Colors.white)),
          ]);
    }

    matriz3x3(palavras) {
      widget.qtdPalavras += 1;
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _linhas(num),
          _linhas(num += 3),
          _linhas(num += 3),
        ],
      );
    }

    _defineMatriz(palavrasSelecionadas) {
      if (widget.qtdPalavras == 1) {
        return matriz3x3(palavrasSelecionadas);
      }
      if (widget.qtdPalavras == 2) {
        return matriz3x3(palavrasSelecionadas);
      }
      if (widget.qtdPalavras == 3) {
        widget.contador += 3;
        return matriz3x3(palavrasSelecionadas);
      }
      if (widget.qtdPalavras == 4) {
        widget.contador += 3;
        widget.qtdPalavras += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linhas(num),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
          ],
        );
      }
      if (widget.qtdPalavras == 5) {
        widget.contador += 3;
        widget.qtdPalavras += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linhas(num),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
          ],
        );
      }
      if (widget.qtdPalavras == 6) {
        widget.contador += 3;
        widget.qtdPalavras += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linhas(num),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
          ],
        );
      }
      if (widget.qtdPalavras == 7) {
        widget.contador += 3;
        widget.qtdPalavras += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linhas(num),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
          ],
        );
      }
      if (widget.qtdPalavras == 8) {
        widget.contador += 3;
        widget.qtdPalavras += 1;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _linhas(num),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
            _linhas(num += 3),
          ],
        );
      }
    }

    Size size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.all(2),
        width: size.width,
        color: Colors.black,
        child: _defineMatriz(palavrasSelecionadas));
  }

  void _onClickNavigator(BuildContext context, Widget homePage) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return homePage;
    }));
  }

  _body(context) {

    var _fontes = TextStyle(
        fontSize: 40, color: Colors.purple, fontWeight: FontWeight.bold);

    var categorias = [frutas, veiculos, profissao];
    final _random = new Random();
    var palavrasSelecionadas = categorias[_random.nextInt(categorias.length)]
      ..shuffle();
    listaCategoriaEscolhida =
        palavrasSelecionadas.take(palavrasSelecionadas.length).toList();

    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 40),
      width: size.width,
      height: size.height,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: Text("Memorize essa palavra: ",
                  textAlign: TextAlign.center, style: _fontes)),
          Expanded(
              child: Text(listaCategoriaEscolhida[0],
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))),
          Expanded(child: StreamBuilder(
            stream: numberStream().map((number) => "$number"),
            builder: (context, snapshot){
              if (snapshot.connectionState == ConnectionState.waiting)
                return Text("");
              return Text("${snapshot.data}", style: TextStyle(
                  color: Colors.purple,
                  fontSize: 50,
                  fontFamily: 'SigmarOne'));
            },
          )),
          // Expanded(flex: 0, child: _buttonAdvance(context, "Avançar")),
          // Text(""),
        ],
      ),
    );
  }

  // _buttonAdvance(context, String text) {
  //   return TextButton(
  //       style: TextButton.styleFrom(
  //           backgroundColor: Colors.purple, minimumSize: Size(150, 50)),
  //       child: Text(text, style: TextStyle(color: Colors.white, fontSize: 30)),
  //       onPressed: () {
  //         _onClickAvancar(context);
  //       });
  // }

  _onClickAvancar(context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return _matriz(listaCategoriaEscolhida);
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