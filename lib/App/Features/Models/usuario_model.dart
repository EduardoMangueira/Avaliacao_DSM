class UsuarioModel {
  final String nome;
  final String email;
  final String senha;

  UsuarioModel({required this.nome, required this.email, required this.senha});
}

class UsuarioMockStore {
  static final UsuarioMockStore _instance = UsuarioMockStore._internal();
  factory UsuarioMockStore() => _instance;
  UsuarioMockStore._internal();

  final List<UsuarioModel> _usuarios = [];

  void cadastrar(UsuarioModel usuario) {
    _usuarios.add(usuario);
  }

  UsuarioModel? buscarUsuario(String email, String senha) {
    try {
      return _usuarios.firstWhere((u) => u.email == email && u.senha == senha);
    } catch (e) {
      return null;
    }
  }
}
