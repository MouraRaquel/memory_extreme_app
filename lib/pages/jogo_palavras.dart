import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:memory_extreme_app/home_page.dart';
import 'package:memory_extreme_app/main.dart';
import 'package:memory_extreme_app/pages/drawer_list.dart';

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
    print(widget.contador);
    embaralhadas..shuffle();

    var _estiloBotao = (ElevatedButton.styleFrom(
        primary: Colors.purple, minimumSize: Size(110, 50)));
    var _fontes = TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);

    List<String> apresentadas = [];
    int contadors = 0;

    _adicionaApresentadas() {
      while(apresentadas.length < widget.qtdPalavras) {
        apresentadas.add(palavrasSelecionadas[contadors]);
        print("Apresentadas: $apresentadas");
        contadors ++;
      }
    }
    _adicionaApresentadas();

    _onClickAvancar(context) {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
            return _matriz(palavrasSelecionadas);
          }));
    }

    _button(context, String text) {
      return TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.purple),
          child: Text(text, style: TextStyle(color: Colors.white)),
          onPressed: () {
            _onClickAvancar(context);
          });
    }

    int nums = 0;

    _linha(nums){
      return Text(palavrasSelecionadas[nums],
          style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold));

    }

    _apresentaPalavras2(){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _linha(nums),
          _linha(nums += 1),
        ],
      );
    }
    _apresentaPalavras3(){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _linha(nums),
          _linha(nums += 1),
          _linha(nums += 1),
        ],
      );
    }
    _apresentaPalavras4(){
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
    _apresentaPalavras5(){
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
    _apresentaPalavras6(){
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
    _apresentaPalavras7(){
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

    _qtdPalavrasApresentadas(){
      print(widget.total);
      if (widget.total == 2) {
        widget.total += 1;
        return _apresentaPalavras2();
      }
      if (widget.total == 3) {
        widget.total += 1;
        return _apresentaPalavras3();
      }
      if (widget.total == 4) {
        widget.total += 1;
        return _apresentaPalavras4();
      }
      if (widget.total == 5) {
        widget.total += 1;
        return _apresentaPalavras5();
      }
      if (widget.total == 6) {
        widget.total += 1;
        return _apresentaPalavras6();
      }
      if (widget.total == 7) {
        widget.total += 1;
        return _apresentaPalavras7();
      }

    }

    _novaPalavra(palavrasSelecionadas) {

      var _fontes = TextStyle(
          fontSize: 40, color: Colors.purple, fontWeight: FontWeight.bold);

      Size size = MediaQuery.of(context).size;
      return Container(
        padding: EdgeInsets.all(10),
        width: size.width,
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Text("Memorize essas palavras: ",
                textAlign: TextAlign.center, style: _fontes),
            _qtdPalavrasApresentadas(),
            Text("", style: TextStyle(color: Colors.white)),
            _button(context, "Avançar"),
            Text("", style: TextStyle(color: Colors.white)),
          ],
        ),
      );
    }

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
                    _onClickNavigator(
                        context, _novaPalavra(palavrasSelecionadas));
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

    int count = 0;
    List<String> clicadas = [];

    _verificarPalavras(BuildContext context) {

      count ++;
      clicadas.add(clicada);
      if (clicadas.length == apresentadas.length) {
        for (int i = 0; i < count; i++) {
          if (apresentadas[i] == clicadas[i]) {
            _palavrasCorretas(context);
          } else {
            _palavrasErradas(context);
          }
        }
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
                  clicada = embaralhadas[num+1];
                  _verificarPalavras(context);
                },
                child: Text(embaralhadas[num+1],
                    textAlign: TextAlign.center, style: _fontes)),
            TextButton(
                style: _estiloBotao,
                onPressed: () {
                  clicada = embaralhadas[num+2];
                  _verificarPalavras(context);
                },
                child: Text(embaralhadas[num+2],
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

    matriz4x3(palavras) {
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

    matriz5x3(palavras) {
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

    matriz6x3(palavras) {
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

    matriz7x3(palavras) {
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

    matriz8x3(palavras) {
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
        return matriz4x3(palavrasSelecionadas);
      }
      if (widget.qtdPalavras == 5) {
        widget.contador += 3;
        return matriz5x3(palavrasSelecionadas);
      }
      if (widget.qtdPalavras == 6) {
        widget.contador += 3;
        return matriz6x3(palavrasSelecionadas);
      }
      if (widget.qtdPalavras == 7) {
        widget.contador += 3;
        return matriz7x3(palavrasSelecionadas);
      }
      if (widget.qtdPalavras == 8) {
        widget.contador += 3;
        return matriz8x3(palavrasSelecionadas);
      }
    }

    Size size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.all(2),
        width: size.width,
        color: Colors.black,
        child: _defineMatriz(palavrasSelecionadas)
    );
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
                  textAlign: TextAlign.center, style: _fontes)),
          Expanded(
              flex: 6,
              child: Text(listaCategoriaEscolhida[0],
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))),
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
      return _matriz(
          listaCategoriaEscolhida);
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
