import 'package:characters_of_harrypotter/repository/character_repository.dart';
import 'package:flutter/cupertino.dart';

import '../models/character.dart';

class CharacterViewModel extends ChangeNotifier {
  Character? _selectedCharacter;

  List selectedList = [];

  final CharacterRepository _repository = CharacterRepository();

  int get getRow => _repository.fetchData().length;
  List get getList => _repository.fetchData();
  get getCharacter => _selectedCharacter;

  setCharacter(Character? c) {
    _selectedCharacter = c;
    notifyListeners();
  }

  initList() {
    selectedList = getList;
  }

  emptyList() {
    selectedList = getList;
    notifyListeners();
  }

  setSelectedList(List list) {
    selectedList = [];
    selectedList = list;
    notifyListeners();
  }
}
