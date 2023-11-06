// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/perfil/cadastro.dart';


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
        title: const Text('Login'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              CircleAvatar(
                radius: 35.0,
                backgroundColor: Color.fromARGB(255, 131, 167, 131),
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
                  }
                  return null;
                },
              ),
              TextButton(
                child: Text('Não possuí uma conta ainda? Cadastre-se aqui!'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CadastroPage(),
                      ));
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async{
                  if (_formKey.currentState!.validate()) {
                    if (_usuarioRepository.validarUsuario(
                        _emailController.text, _senhaController.text)) {
                          await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Icon(
                              Icons.check_circle,
                              color: Color.fromARGB(255, 106, 150, 108),
                              size: 50,
                            ),
                            content: const Text('Login realizado com sucesso'),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pushNamed(context, '/');
                                  //Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                                },
                              ),
                            ],
                          );
                        },
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 50,
                            ),
                            content: const Text('Erro ao realizar o login'),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.pop(context);
                                  //Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
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
                  backgroundColor: Colors.black,
        
                  padding: EdgeInsets.symmetric(
                      horizontal: 40, vertical: 20), // Ajuste o tamanho do botão
                ),
                child: const Text('Entrar'),
              ),
            ],
          ),
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
