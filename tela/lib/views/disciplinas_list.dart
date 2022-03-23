import 'package:flutter/material.dart';
import 'package:tela/components/disciplinas_tile.dart';
import 'package:provider/provider.dart';
import 'package:tela/provider/disciplinas.dart';
import 'package:tela/routes/app_routes.dart';

class DisciplinasList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Disciplinas disciplinas = Provider.of(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 61, 61),
        leading: SizedBox(
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.DISCIPLINA_FORM,
              );
            },
            icon: const Icon(Icons.add),
            color: Colors.white70,
          ),
        ),
        title: const Text('Disciplinas Cadastradas'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
        child: ListView.builder(
          itemCount: disciplinas.count,
          itemBuilder: (ctx, i) => DisciplinasTile(disciplinas.byIndex(i)),
        ),
      ),
    );
  }
}
