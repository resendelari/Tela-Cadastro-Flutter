import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tela/data/dummy_disciplinas.dart';
import 'package:tela/models/disciplinas.dart';

class Disciplinas with ChangeNotifier {
  final Map<String, Disciplina> _items = {...DUMMY_DISCIPLINAS};

  List<Disciplina> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Disciplina byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Disciplina disciplina) {
    if (disciplina == null) {
      return;
    }

    if (disciplina.id != null &&
        disciplina.id.trim().isNotEmpty &&
        _items.containsKey(disciplina.id)) {
      _items.update(
        disciplina.id,
        (_) => Disciplina(
            id: disciplina.id,
            codigo: disciplina.codigo,
            departamento: disciplina.departamento,
            nome: disciplina.nome,
            professor: disciplina.professor),
      );
    } else {
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
        id,
        () => Disciplina(
          id: id,
          nome: disciplina.nome,
          codigo: disciplina.codigo,
          departamento: disciplina.departamento,
          professor: disciplina.professor,
        ),
      );
    }
    notifyListeners();
  }

  void remove(Disciplina disciplina) {
    if (disciplina != null && disciplina.id != null) {
      _items.remove(disciplina.id);
      notifyListeners();
    }
  }
}
