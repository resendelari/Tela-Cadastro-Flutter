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
      body: Center(
        child: Form(
          key: _formkey,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: "Nome Completo",
                    ),
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
                  padding: const EdgeInsets.all(5),
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
                  padding: const EdgeInsets.all(5),
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
                  padding: const EdgeInsets.all(5),
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
                  padding: const EdgeInsets.all(5),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration:
                        const InputDecoration(labelText: "Número de Matrícula"),
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
                  padding: const EdgeInsets.all(5),
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
                  padding: const EdgeInsets.all(5),
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
                Padding(
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          //faz algo
                        } else {
                          //outro
                        }
                      },
                      child: null,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
