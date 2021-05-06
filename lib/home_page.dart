import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memory_extreme_app/pages/drawer_list.dart';
import 'package:memory_extreme_app/pages/tela_jogos.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Memory Extreme", style: TextStyle(
        color: Colors.black,)),),
      body: _body(context),
      drawer: DrawerList(),
    );
  }

  _body(context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 2),
      width: size.width,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(flex: 1, child: Text("Memory Extreme", style: TextStyle(
              fontSize: 32,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
              fontFamily: 'SigmarOne',))),
        Expanded(flex: 7, child: _img("assets/imagens/cerebro_exercitando.png")),
        Expanded(flex: 0, child: _button(context, "Avançar")),
          Expanded(flex: 1, child: Text(" ", style: TextStyle(color: Colors.white))),
        ],
      ),
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
      return Jogos();
    }));
  }

  _img(String img) {
    return Image.asset(
      img,
      width: 300,
      height: 300,
    );
  }
}
