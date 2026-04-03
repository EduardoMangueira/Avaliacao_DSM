// lib/app/views/signup_page.dart
import 'package:avaliacao_1/App/Features/ViewModels/login_viewmodel.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _viewModel = SignupViewModel();

  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nomeController,
                decoration: InputDecoration(labelText: "Nome"),
                validator: (val) => val!.isEmpty ? "Obrigatório" : null,
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: "E-mail"),
                validator: (val) =>
                    !val!.contains("@") ? "E-mail inválido" : null,
              ),
              TextFormField(
                controller: _senhaController,
                decoration: InputDecoration(labelText: "Senha"),
                obscureText: true,
                validator: (val) => val!.length < 4 ? "Senha curta" : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _viewModel.realizarCadastro(
                      _nomeController.text,
                      _emailController.text,
                      _senhaController.text,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Cadastrado com sucesso!")),
                    );
                    Navigator.pop(context);
                  }
                },
                child: Text("Salvar Cadastro"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
