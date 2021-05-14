import 'package:flutter/material.dart';
import 'package:memory_extreme_app/home_page.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _tLogin = TextEditingController();
  final _tSenha = TextEditingController();

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Memory Extreme"),
        ),
        body: _body(context));
  }

  _body(context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            _text("Login", "Digite o Login",
                controller: _tLogin,
                validator: _validateLogin,
                keyboardType: TextInputType.emailAddress),
            SizedBox(
              height: 10,
            ),
            _text("Senha", "Digite a senha",
                password: true,
                controller: _tSenha,
                validator: _validateSenha,
                keyboardType: TextInputType.number),
            SizedBox(
              height: 20,
            ),
            _button(context, "Entrar", _onClickLogin),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  _text(
    String label,
    String hint, {
    bool password = false,
    TextEditingController controller,
    FormFieldValidator<String> validator,
    TextInputType keyboardType,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: password,
      validator: validator,
      keyboardType: keyboardType,
      style: TextStyle(fontSize: 25, color: Colors.purple),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(fontSize: 25, color: Colors.purple),
        hintText: hint,
        hintStyle: TextStyle(fontSize: 16),
      ),
    );
  }

  _button(context, String text, Function onPressed) {
    return Container(
      height: 46,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.purple
          ),
          child: Text(text, style: TextStyle(color: Colors.white, fontSize: 22)),
          onPressed: () {
            _onClickLogin(context);
          }
      ),
    );
  }

  void _onClickLogin(context) {
    if (!_formKey.currentState.validate()) {
      return;
    }

    String login = _tLogin.text;
    String senha = _tSenha.text;

    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return HomePage();
    }));
  }

  String _validateLogin(String text) {
    if (text.isEmpty) {
      return "Digite o login";
    }
    return null;
  }

  String _validateSenha(String text) {
    if (text.isEmpty) {
      return "Digite a senha";
    }
    if (text.length < 6) {
      return "A Senha precisa ter pelo menos 6 caracteres";
    }
    return null;
  }
}
