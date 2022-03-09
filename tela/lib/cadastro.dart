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

  final items = [
    'Ciencias da Computação',
    'Sistemas de Informação',
    'Eng. de Controle e Automação',
    'Outros'
  ];

  String? value;

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 47, 61, 66),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 198, 208, 212),
      ),
      body: Row(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(100, 200, 20, 100),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: const [
                      Text(
                        'VESPERTO',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      Divider(
                        color: Colors.white70,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sit amet mi sit amet elit sollicitudin dapibus. Aliquam rutrum orci eget neque porta, non finibus nibh lacinia.',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                children: [
                  Form(
                    key: _formkey,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(100, 50, 20, 0),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Center(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                                child: Text(
                                  'Criar minha conta',
                                  style: TextStyle(
                                    color: Colors.white,
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
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.white70))),
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
                                decoration:
                                    const InputDecoration(labelText: "Email"),
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
                            // Padding( SUGESTÃO: APARECER APENAS SE O USUÁRIO QUISER COMPLETAR O CADASTRO
                            //   padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                            //   child: TextFormField(
                            //     keyboardType: TextInputType.text,
                            //     decoration:
                            //         const InputDecoration(labelText: "Email Adicional"),
                            //     validator: (value) {
                            //       if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            //           .hasMatch(value!)) {
                            //         return 'Digite um e-mail válido';
                            //       } else {
                            //         return null;
                            //       }
                            //     },
                            //     // onSaved: (String value) {
                            //     //   email = value;
                            //     // },
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                              child: DropdownButton<String>(
                                hint: const Text(
                                  'Curso',
                                  style: TextStyle(
                                    color: Colors.white70,
                                  ),
                                ),
                                value: value,
                                items: items.map(buildMenuItem).toList(),
                                onChanged: (value) =>
                                    setState(() => this.value = value),
                              ),

                              // validator: (value) {
                              //   if (value!.isEmpty) {
                              //     return 'Esse campo é obrigatório';
                              //   } else {
                              //     return null;
                              //   }
                              // },
                              // onSaved: (String value) {
                              //   name = value;
                              // },
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
                                decoration:
                                    const InputDecoration(labelText: "Senha"),
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
                                decoration: const InputDecoration(
                                    labelText: "Confirme a senha"),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Esse campo é obrigatório';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            Row(
                              children: [
                                ButtonTheme(
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          170, 20, 10, 0),
                                      child: ElevatedButton(
                                          onPressed: () => {
                                                //volta para outra tela
                                              },
                                          child: const Text(
                                            '← Login',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 198, 208, 212),
                                              fontSize: 15,
                                            ),
                                          ),
                                          // ignore: prefer_const_constructors
                                          style: TextButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 47, 61, 66),
                                              alignment: Alignment.center)),
                                    ),
                                  ),
                                ),
                                ButtonTheme(
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 20, 10, 0),
                                      child: ElevatedButton(
                                          onPressed: () => {
                                                if (_formkey.currentState!
                                                    .validate())
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
                                              color: Color.fromARGB(
                                                  255, 47, 61, 66),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          // ignore: prefer_const_constructors
                                          style: TextButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 198, 208, 212),
                                              alignment: Alignment.center)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
