import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tela/data/dummy_turmas.dart';
import 'package:tela/models/turmas.dart';

class Turmas with ChangeNotifier {
  final Map<String, Turma> _items = {...DUMMY_TURMAS};

  List<Turma> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Turma byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Turma turma) {
    if (turma == null) {
      return;
    }

    if (turma.id != null &&
        turma.id.trim().isNotEmpty &&
        _items.containsKey(turma.id)) {
      _items.update(
        turma.id,
        (_) => Turma(
          id: turma.id,
          departamento: turma.departamento,
          nome: turma.nome,
        ),
      );
    } else {
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
        id,
        () => Turma(
          id: id,
          nome: turma.nome,
          departamento: turma.departamento,
        ),
      );
    }
    notifyListeners();
  }

  void remove(Turma turma) {
    if (turma != null && turma.id != null) {
      _items.remove(turma.id);
      notifyListeners();
    }
  }
}
