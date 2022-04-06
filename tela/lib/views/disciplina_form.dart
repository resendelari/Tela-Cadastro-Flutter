import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class DisciplinaForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 61, 61),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 30, 50, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Cadastro de Disciplinas',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 20, 80, 0),
            child: Column(
              children: [
                Form(
                  //key: _formkey,

                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                                labelText: "Nome da Disciplina",
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
                            decoration: const InputDecoration(
                                labelText: "Código",
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
                            decoration: const InputDecoration(
                                labelText: "Departamento",
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
                          child: Column(
                            children: [
                              TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: const InputDecoration(
                                    labelText: "Nome do Professor",
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
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add),
                                color: Colors.blueGrey,
                              ),
                            ],
                          ),
                        ),
                        ButtonTheme(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                onPressed: () => {},
                                child: const Text(
                                  'Salvar',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                // ignore: prefer_const_constructors
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 170, 214, 243),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),

                                    //alignment: Alignment.center)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
