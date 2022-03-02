import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  late String name,email,course, addEmail, numMatricula;

  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: 
          Form(
            key: _formkey,
              child: Center(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    child: Container(
                      alignment: Alignment.topRight,
                      height: 500,                    
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 25.0,
                            spreadRadius: 0.1,
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: buildInputDecoration(Icons.person,"Nome Completo"),
                              validator: (String value){
                                if(value.isEmpty){
                                  return 'Esse campo é obrigatório';
                                }
                              return null;
                              },
                              onSaved: (String value){
                                name = value;
                              },
                            ),

                            SizedBox(height: 10),
                            
                            TextFormField(
                              keyboardType: TextInputType.text,
                              decoration:buildInputDecoration(Icons.email,"Email"),
                              validator: (String value){
                                if(value.isEmpty)
                                {
                                  return 'Esse campo é obrigatório';
                                }
                                if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                                  return 'Digite um e-mail válido';
                                }
                                return null;
                              },
                              onSaved: (String value){
                                email = value;
                              },
                            ),

                            SizedBox(height: 10),

                            TextFormField(
                              keyboardType: TextInputType.text,
                              decoration:buildInputDecoration(Icons.email,"Email Adicional"),
                              validator: (String value){
                                if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                                  return 'Digite um e-mail válido';
                                }
                                return null;
                              },
                              onSaved: (String value){
                                email = value;
                              },
                            ),

                            SizedBox(height: 10),

                            TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: buildInputDecoration(Icons.person,"Curso"),
                              validator: (String value){
                                if(value.isEmpty)
                                {
                                  return 'Esse campo é obrigatório';
                                }
                                return null;
                              },
                              onSaved: (String value){
                                name = value;
                              },
                            ),

                            SizedBox(height: 10),

                            TextFormField(
                              keyboardType: TextInputType.number,
                              decoration:buildInputDecoration(Icons.phone,"Número de Matrícula"),
                              validator: (String value){
                                if(value.isEmpty)
                                {
                                  return 'Esse campo é obrigatório';
                                }
                                return null;
                              },
                              onSaved: (String value){
                                phone = value;
                              },
                            ),

                            SizedBox(height: 10),

                            TextFormField(
                              controller: password,
                              keyboardType: TextInputType.text,
                              decoration:buildInputDecoration(Icons.lock,"Senha"),
                              validator: (String value){
                                if(value.isEmpty)
                                {
                                  return 'Esse campo é obrigatório';
                                }
                                return null;
                              },

                              ),
                            
                            SizedBox(height: 10),

                            TextFormField(
                              controller: confirmpassword,
                              obscureText: true,
                              keyboardType: TextInputType.text,
                              decoration:buildInputDecoration(Icons.lock,"Confirme sua Senha"),
                              validator: (String value){
                                if(value.isEmpty)
                                {
                                  return 'Esse campo é obrigatório';
                                }
                                print(password.text);

                                print(confirmpassword.text);

                                if(password.text!=confirmpassword.text){
                                  return "As senhas são diferentes";
                                }

                                return null;
                              },
                            ),
                            
                            SizedBox(height: 20),

                            RaisedButton(
                              color: Colors.redAccent,
                              onPressed: (){

                                if(_formkey.currentState.validate())
                                {
                                  print("Cadastro Realizado!");

                                  return;
                                }else{
                                  print("Cadastro Não Realizado!");
                                }
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side: BorderSide(color: Colors.blue,width: 2)
                              ),
                              textColor:Colors.white,child: Text("Criar Conta"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ),
      );
  }
}
