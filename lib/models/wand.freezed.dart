// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Wand _$WandFromJson(Map<String, dynamic> json) {
  return _Wand.fromJson(json);
}

/// @nodoc
class _$WandTearOff {
  const _$WandTearOff();

  _Wand call(
      {required String wood, required String core, required int length}) {
    return _Wand(
      wood: wood,
      core: core,
      length: length,
    );
  }

  Wand fromJson(Map<String, Object?> json) {
    return Wand.fromJson(json);
  }
}

/// @nodoc
const $Wand = _$WandTearOff();

/// @nodoc
mixin _$Wand {
  String get wood => throw _privateConstructorUsedError;
  String get core => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WandCopyWith<Wand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WandCopyWith<$Res> {
  factory $WandCopyWith(Wand value, $Res Function(Wand) then) =
      _$WandCopyWithImpl<$Res>;
  $Res call({String wood, String core, int length});
}

/// @nodoc
class _$WandCopyWithImpl<$Res> implements $WandCopyWith<$Res> {
  _$WandCopyWithImpl(this._value, this._then);

  final Wand _value;
  // ignore: unused_field
  final $Res Function(Wand) _then;

  @override
  $Res call({
    Object? wood = freezed,
    Object? core = freezed,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
      wood: wood == freezed
          ? _value.wood
          : wood // ignore: cast_nullable_to_non_nullable
              as String,
      core: core == freezed
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$WandCopyWith<$Res> implements $WandCopyWith<$Res> {
  factory _$WandCopyWith(_Wand value, $Res Function(_Wand) then) =
      __$WandCopyWithImpl<$Res>;
  @override
  $Res call({String wood, String core, int length});
}

/// @nodoc
class __$WandCopyWithImpl<$Res> extends _$WandCopyWithImpl<$Res>
    implements _$WandCopyWith<$Res> {
  __$WandCopyWithImpl(_Wand _value, $Res Function(_Wand) _then)
      : super(_value, (v) => _then(v as _Wand));

  @override
  _Wand get _value => super._value as _Wand;

  @override
  $Res call({
    Object? wood = freezed,
    Object? core = freezed,
    Object? length = freezed,
  }) {
    return _then(_Wand(
      wood: wood == freezed
          ? _value.wood
          : wood // ignore: cast_nullable_to_non_nullable
              as String,
      core: core == freezed
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wand implements _Wand {
  _$_Wand({required this.wood, required this.core, required this.length});

  factory _$_Wand.fromJson(Map<String, dynamic> json) => _$$_WandFromJson(json);

  @override
  final String wood;
  @override
  final String core;
  @override
  final int length;

  @override
  String toString() {
    return 'Wand(wood: $wood, core: $core, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Wand &&
            const DeepCollectionEquality().equals(other.wood, wood) &&
            const DeepCollectionEquality().equals(other.core, core) &&
            const DeepCollectionEquality().equals(other.length, length));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(wood),
      const DeepCollectionEquality().hash(core),
      const DeepCollectionEquality().hash(length));

  @JsonKey(ignore: true)
  @override
  _$WandCopyWith<_Wand> get copyWith =>
      __$WandCopyWithImpl<_Wand>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WandToJson(this);
  }
}

abstract class _Wand implements Wand {
  factory _Wand(
      {required String wood,
      required String core,
      required int length}) = _$_Wand;

  factory _Wand.fromJson(Map<String, dynamic> json) = _$_Wand.fromJson;

  @override
  String get wood;
  @override
  String get core;
  @override
  int get length;
  @override
  @JsonKey(ignore: true)
  _$WandCopyWith<_Wand> get copyWith => throw _privateConstructorUsedError;
}
