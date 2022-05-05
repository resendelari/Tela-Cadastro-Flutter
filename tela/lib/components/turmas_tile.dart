import 'package:tela/models/turmas.dart';
import 'package:flutter/material.dart';

class TurmasTile extends StatelessWidget {
  final Turma turma;
  // ignore: use_key_in_widget_constructors
  const TurmasTile(this.turma);

  @override
  Widget build(BuildContext context) {
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
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      //mudar só o nome
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
                      //pop up para upar excel
                    },
                    icon: const Icon(Icons.person_add),
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
