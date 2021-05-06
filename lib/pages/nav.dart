import 'package:flutter/material.dart';

Future push(BuildContext context, Widget jogos) {
  return Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return jogos;
  }));
}