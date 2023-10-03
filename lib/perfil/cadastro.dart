import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/home.dart';

class Usuario {
  String usuario;
  String senha;

  Usuario({required this.usuario, required this.senha});
}

class UsuarioRepository {
  List<Usuario> usuarios = [];

  UsuarioRepository() {
    usuarios.add(Usuario(usuario: 'usuario1', senha: 'senha1'));
    usuarios.add(Usuario(usuario: 'usuario2', senha: 'senha2'));
  }

  bool validarUsuario(String usuario, String senha) {
    for (var u in usuarios) {
      if (u.usuario == usuario && u.senha == senha) {
        return true;
      }
    }
    return false;
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _usuarioRepository = UsuarioRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            CircleAvatar(
              radius: 35.0,
              backgroundColor: Color.fromARGB(255, 6, 46, 14),
              child: Icon(
                Icons.person,
                color: Colors.black,
                size: 50.0,
                semanticLabel: 'Text',
              ),
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira o Email';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _senhaController,
              decoration: const InputDecoration(labelText: 'Senha'),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira a senha';
                } else if (value.length < 3) {
                  return 'A senha deve ter pelo menos 3 caracteres (use caracteres especiais para mais segurança!)';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Confirmar Senha'),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, confirme a senha';
                } else if (value != _senhaController.text) {
                  return 'As senhas não coincidem';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  if (_usuarioRepository.validarUsuario(
                      _emailController.text, _senhaController.text)) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Erro'),
                          content: const Text(
                              'Email ou senha incorretos. Tente novamente.'),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('OK'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                }
              },
              style: ElevatedButton.styleFrom(
                
                padding: EdgeInsets.symmetric(
                    horizontal: 40, vertical: 20), // Ajuste o tamanho do botão
              ),
              child: const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Center(
        child: Text('Bem-vinde à Home Page!'),
      ),
    );
  }
}
