import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/home.dart';
import 'package:mysql1/mysql1.dart';

import '../bd/bd.dart';

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

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final _formKey = GlobalKey<FormState>();
  final _cpfContrioller = TextEditingController();
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _ruaController = TextEditingController();
  final _cidadeController = TextEditingController();
  final _cepController = TextEditingController();
  final _numeroController = TextEditingController();
  final _bairroController = TextEditingController();
  final _estadoController = TextEditingController();
  final _dataNascimentoController = TextEditingController();
  final _usuarioRepository = UsuarioRepository();
  var db = BD();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
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
                controller: _cpfContrioller,
                decoration: const InputDecoration(labelText: 'CPF'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o CPF';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _nomeController,
                decoration: const InputDecoration(labelText: 'Nome'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o seu nome';
                  }
                  return null;
                },
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
        
              TextFormField(
                controller: _telefoneController,
                decoration: const InputDecoration(labelText: 'Telefone'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o Telefone';
                  }
                  return null;
                },
              ),
        
              TextFormField(
                controller: _ruaController,
                decoration: const InputDecoration(labelText: 'Rua'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira a Rua';
                  }
                  return null;
                },
              ),
        
              TextFormField(
                controller: _cidadeController,
                decoration: const InputDecoration(labelText: 'Cidade'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira a Cidade';
                  }
                  return null;
                },
              ),
        
              TextFormField(
                controller: _cepController,
                decoration: const InputDecoration(labelText: 'CEP'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o seu CEP';
                  }
                  return null;
                },
              ),
        
              TextFormField(
                controller: _numeroController,
                decoration: const InputDecoration(labelText: 'Numero'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o seu Numero';
                  }
                  return null;
                },
              ),
        
              TextFormField(
                controller: _bairroController,
                decoration: const InputDecoration(labelText: 'Bairro'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o Bairro';
                  }
                  return null;
                },
              ),
        
              TextFormField(
                controller: _estadoController,
                decoration: const InputDecoration(labelText: 'Estado'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o Estado';
                  }
                  return null;
                },
              ),
        
              TextFormField(
                controller: _dataNascimentoController,
                decoration: const InputDecoration(labelText: 'Data de Nascimento'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira a sua data de nascimento';
                  }
                  return null;
                },
              ),
        
            
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  db.getConnection().then((conn){
                  conn.query('insert into cliente (cpf, nome, email, senha, telefone, rua, cidade, cep, numero, bairro, estado, dataNascimento) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', [_cpfContrioller.text, _nomeController.text, _emailController.text, _senhaController.text, _telefoneController.text, _ruaController.text, _cidadeController.text, _cepController.text, _numeroController.text, _bairroController.text, _estadoController.text, DateTime.now()]);
                  });
                  /*if (_formKey.currentState!.validate()) {
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
                            title: Icon(
                                Icons.check_circle,
                                color: Color.fromARGB(255, 106, 150, 108),
                                size: 50,),
                            content: const Text(
                                'Usuário cadastrado com sucesso'),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }
                  }*/
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  
                  padding: EdgeInsets.symmetric(
                      horizontal: 40, vertical: 20), // Ajuste o tamanho do botão
                ),
                child: const Text('Cadastrar'),
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
