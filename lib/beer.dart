// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'beer.freezed.dart';
part 'beer.g.dart';

@freezed
class Beer with _$Beer {
  const factory Beer({
    required int id,
    required String name,
    @Default('') String tagline,
  }) = _Beer;

  factory Beer.fromJson(Map<String, Object?> json) => _$BeerFromJson(json);
}
