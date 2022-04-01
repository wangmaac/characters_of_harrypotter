// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Character _$$_CharacterFromJson(Map<String, dynamic> json) => _$_Character(
      name: json['name'] as String,
      alternate_names: json['alternate_names'] as List<dynamic>,
      species: json['species'] as String,
      gender: json['gender'] as String,
      house: json['house'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      yearOfBirth: json['yearOfBirth'] as int,
      wizard: json['wizard'] as bool,
      ancestry: json['ancestry'] as String,
      eyeColour: json['eyeColour'] as String,
      hairColour: json['hairColour'] as String,
      wand: Wand.fromJson(json['wand'] as Map<String, dynamic>),
      patronus: json['patronus'] as String,
      hogwartsStudent: json['hogwartsStudent'] as bool,
      hogwartsStaff: json['hogwartsStaff'] as bool,
      actor: json['actor'] as String,
      alternate_actors: json['alternate_actors'] as List<dynamic>,
      alive: json['alive'] as bool,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'name': instance.name,
      'alternate_names': instance.alternate_names,
      'species': instance.species,
      'gender': instance.gender,
      'house': instance.house,
      'dateOfBirth': instance.dateOfBirth,
      'yearOfBirth': instance.yearOfBirth,
      'wizard': instance.wizard,
      'ancestry': instance.ancestry,
      'eyeColour': instance.eyeColour,
      'hairColour': instance.hairColour,
      'wand': instance.wand,
      'patronus': instance.patronus,
      'hogwartsStudent': instance.hogwartsStudent,
      'hogwartsStaff': instance.hogwartsStaff,
      'actor': instance.actor,
      'alternate_actors': instance.alternate_actors,
      'alive': instance.alive,
      'image': instance.image,
    };
