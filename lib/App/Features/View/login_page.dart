import 'package:avaliacao_1/App/Features/ViewModels/login_viewmodel.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _viewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: "E-mail"),
                validator: (value) =>
                    value!.isEmpty ? "Informe o e-mail" : null,
              ),
              TextFormField(
                controller: _senhaController,
                decoration: InputDecoration(labelText: "Senha"),
                obscureText: true,
                validator: (value) => value!.length < 6 ? "Senha curta" : null,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    bool logado = _viewModel.autenticar(
                      _emailController.text,
                      _senhaController.text,
                    );
                    if (logado) {
                      Navigator.pushReplacementNamed(context, '/home');
                    } else {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text("Falha no login")));
                    }
                  }
                },
                child: Text("Entrar"),
              ),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, '/signup'),
                child: Text("Não tem conta? Cadastre-se"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
