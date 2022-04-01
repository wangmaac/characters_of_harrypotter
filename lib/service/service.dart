import '../database/database.dart';
import '../models/character.dart';

class MyService {
  fetchData() {
    return database.map((one) => Character.fromJson(one)).toList();
  }
}
