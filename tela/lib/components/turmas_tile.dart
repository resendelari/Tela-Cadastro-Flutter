import 'package:tela/models/turmas.dart';
import 'package:flutter/material.dart';
import 'package:tela/routes/app_routes.dart';

class TurmasTile extends StatelessWidget {
  final turma;
  // ignore: use_key_in_widget_constructors
  const TurmasTile(this.turma);

  @override
  Widget build(BuildContext context) {
    //return Scaffold(
    // return ListView(
    //   children: ListTile.divideTiles(
    //     context: context,
    //     tiles: [
    return ListTile(
      title: Text(
        turma.nome,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 15,
        ),
      ),
      subtitle: Text(turma.departamento),
      trailing: SizedBox(
        width: 100,
        child: Column(
          children: [
            Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      AppRoutes.DISCIPLINA_FORM,
                      arguments: turma,
                    );
                  },
                  icon: const Icon(Icons.edit),
                  color: Colors.orange,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),

      //     ),
      //   ],
      // ).toList(),
      //),
    );
  }
}
