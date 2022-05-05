import 'package:tela/models/disciplinas.dart';
import 'package:flutter/material.dart';
import 'package:tela/routes/app_routes.dart';

class DisciplinasTile extends StatelessWidget {
  final Disciplina disciplina;
  // ignore: use_key_in_widget_constructors
  const DisciplinasTile(this.disciplina);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        disciplina.nome,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 15,
        ),
      ),
      subtitle: Text(disciplina.professor),
      trailing: SizedBox(
        width: 100,
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        AppRoutes.DISCIPLINA_FORM,
                        arguments: disciplina,
                      );
                    },
                    icon: const Icon(Icons.edit),
                    color: Colors.orange,
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        AppRoutes.TURMA_LIST,
                      );
                    },
                    icon: const Icon(Icons.remove_red_eye_sharp),
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
