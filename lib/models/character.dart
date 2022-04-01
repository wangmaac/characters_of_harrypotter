import 'package:characters_of_harrypotter/models/wand.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  factory Character(
      {required String name,
      required List alternate_names,
      required String species,
      required String gender,
      required String house,
      required String dateOfBirth,
      @JsonKey(fromJson: Character.convertStringToInt)  required int
          yearOfBirth,
      required bool wizard,
      required String ancestry,
      required String eyeColour,
      required String hairColour,
      required Wand wand,
      required String patronus,
      required bool hogwartsStudent,
      required bool hogwartsStaff,
      required String actor,
      required List alternate_actors,
      required bool alive,
      required String image}) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  static int convertStringToInt(dynamic yearOfBirth) {
    if (yearOfBirth.runtimeType == String) {
      if (yearOfBirth == "") {
        return 0;
      } else {
        return int.parse(yearOfBirth);
      }
    } else {
      return yearOfBirth.toInt();
    }
  }
}
