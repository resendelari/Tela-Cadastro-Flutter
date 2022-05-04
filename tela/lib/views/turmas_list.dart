import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tela/components/turmas_tile.dart';
import 'package:tela/provider/turmas.dart';
import 'package:tela/routes/app_routes.dart';

// ignore: use_key_in_widget_constructors
class TurmasList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Turmas turmas = Provider.of(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 61, 61),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Turmas Cadastradas',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
            child: Column(
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: turmas.count,
                  itemBuilder: (ctx, i) => TurmasTile(turmas.byIndex(i)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
