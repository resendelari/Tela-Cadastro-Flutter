import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  late String name, email, course, addEmail, numMatricula;

  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: SingleChildScrollView(
          //TO DO: adicionar a Row para que a logo fique ao lado do form
          // child: Row(
          //   children: [
          //     const Text(
          //       'Criar Conta',
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 15,
          //       ),
          //     ),
          child: Form(
            key: _formkey,
            child: Container(
              alignment: Alignment.centerRight,
              height: 700,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: Text(
                        'Cadastre-se',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                          labelText: "Nome Completo",
                          border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white70))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Esse campo é obrigatório';
                        } else {
                          return null;
                        }
                      },
                      // onSaved: (value) {
                      //   name = value!;
                      // },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(labelText: "Email"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Esse campo é obrigatório';
                        } else if (!RegExp(
                                "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                          return 'Digite um e-mail válido';
                        } else {
                          return null;
                        }
                      },
                      // onSaved: (String value) {
                      //   email = value;
                      // },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration:
                          const InputDecoration(labelText: "Email Adicional"),
                      validator: (value) {
                        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value!)) {
                          return 'Digite um e-mail válido';
                        } else {
                          return null;
                        }
                      },
                      // onSaved: (String value) {
                      //   email = value;
                      // },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(labelText: "Curso"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Esse campo é obrigatório';
                        } else {
                          return null;
                        }
                      },
                      // onSaved: (String value) {
                      //   name = value;
                      // },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          labelText: "Número de Matrícula"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Esse campo é obrigatório';
                        } else {
                          return null;
                        }
                      },
                      // onSaved: (String value) {
                      //   phone = value;
                      // },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: TextFormField(
                      controller: password,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(labelText: "Senha"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Esse campo é obrigatório';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: TextFormField(
                      controller: confirmpassword,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration:
                          const InputDecoration(labelText: "Confirme a senha"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Esse campo é obrigatório';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  ButtonTheme(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                        child: ElevatedButton(
                            onPressed: () => {
                                  if (_formkey.currentState!.validate())
                                    {
                                      //faz algo
                                    }
                                  else
                                    {
                                      //outro
                                    }
                                },
                            child: const Text(
                              'Criar Conta',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            // ignore: prefer_const_constructors
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.blueGrey,
                                alignment: Alignment.center)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
