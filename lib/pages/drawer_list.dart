import 'package:flutter/material.dart';
import 'package:memory_extreme_app/pages/jogo_das_figuras.dart';
import 'package:memory_extreme_app/pages/login.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Raquel Amaral"),
              accountEmail: Text("raquelaguiar@id.uff.br"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/imagens/perfil.jpg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.add_to_home_screen),
              title: Text("Página Inicial"),
              subtitle: Text("Mais informações"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(Icons.text_fields),
              title: Text("Jogo das Palavras"),
              subtitle: Text("Mais informações"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(Icons.terrain),
              title: Text("Jogo das Figuras"),
              subtitle: Text("Mais informações"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(Icons.receipt),
              title: Text("Instruções"),
              subtitle: Text("Mais informações"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => onClickLogout(context),
            )
          ],
        ),
      ),);
  }
}
  onClickLogout(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return Login();
    }));
  }



