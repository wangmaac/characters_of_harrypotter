import 'package:characters_of_harrypotter/repository/character_repository.dart';
import 'package:flutter/cupertino.dart';

import '../models/character.dart';

class CharacterViewModel extends ChangeNotifier {
  Character? _selectedCharacter;

  final CharacterRepository _repository = CharacterRepository();

  int get getRow => _repository.fetchData().length;
  List get getList => _repository.fetchData();
  get getCharacter => _selectedCharacter;

  setCharacter(Character? c) {
    _selectedCharacter = c;
    notifyListeners();
  }
}
