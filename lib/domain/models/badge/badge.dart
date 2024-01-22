import 'package:freezed_annotation/freezed_annotation.dart';

part 'badge.freezed.dart';

part 'badge.g.dart';

@freezed
abstract class Badge with _$Badge {
  const factory Badge({
    required int id,
    String? text,
    @JsonKey(name: 'text_color') String? textColor,
    @JsonKey(name: 'bg_color') String? bgColor,
    String? picture,
  }) = _Badge;

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);
}
