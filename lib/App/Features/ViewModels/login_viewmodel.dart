import 'package:avaliacao_1/App/Features/Models/usuario_model.dart';

class LoginViewModel {
  final UsuarioMockStore _store = UsuarioMockStore();

  bool autenticar(String email, String senha) {
    final usuario = _store.buscarUsuario(email, senha);
    return usuario != null;
  }
}

class SignupViewModel {
  final UsuarioMockStore _store = UsuarioMockStore();

  void realizarCadastro(String nome, String email, String senha) {
    final novoUsuario = UsuarioModel(nome: nome, email: email, senha: senha);
    _store.cadastrar(novoUsuario);
  }
}
