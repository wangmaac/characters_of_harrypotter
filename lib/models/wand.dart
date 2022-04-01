import 'package:freezed_annotation/freezed_annotation.dart';

part 'wand.freezed.dart';
part 'wand.g.dart';

@freezed
class Wand with _$Wand {
  factory Wand({
    required String wood,
    required String core,
    @JsonKey(fromJson: Wand.converted) required double length,
  }) = _Wand;

  factory Wand.fromJson(Map<String, dynamic> json) => _$WandFromJson(json);

  static double converted(dynamic length) {
    if (length.runtimeType == double) {
      return length;
    } else if (length.runtimeType == int) {
      return (length.toDouble());
    } else {
      if (length == "") {
        return 0.0;
      } else {
        return double.parse(length);
      }
    }
  }
}
