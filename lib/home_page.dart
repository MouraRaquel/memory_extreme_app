import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memory_extreme_app/pages/drawer_list.dart';
import 'package:memory_extreme_app/pages/jogos.dart';
import 'package:memory_extreme_app/pages/login.dart';

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
        children: [

              Expanded(flex: 1, child: Text("Memory Extreme", style: TextStyle(
                  fontSize: 32,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SigmarOne',))),
            Expanded(flex: 7, child: _img("assets/imagens/cerebro_exercitando.png")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
            Expanded(flex: 0, child: _buttonAdvance(context, "Jogar")),
              Expanded(flex: 0, child: _buttonExit(context, "Sair")),

            ],
          ),
          Expanded(flex: 1, child: Text(" ", style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }

  _buttonAdvance(context, String text) {
    return TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.purple, minimumSize: Size(150, 50)),
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 30)),
        onPressed: () {
          _onClickAdvance(context);
        });
  }
  _buttonExit(context, String text) {
    return TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.purple, minimumSize: Size(150, 50)),
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 30)),
        onPressed: () {
          _onClickExit(context);
        });
  }

  _onClickAdvance(context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return Jogos();
    }));
  }

  _onClickExit(context) {
    Navigator.pop(context, MaterialPageRoute(builder: (BuildContext context) {
      return Login();
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
