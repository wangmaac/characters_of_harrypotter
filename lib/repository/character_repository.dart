import 'package:characters_of_harrypotter/models/character.dart';
import 'package:characters_of_harrypotter/service/service.dart';

class CharacterRepository {
  final MyService _service = MyService();

  List<Character> fetchData() {
    return _service.fetchData();
  }
}
