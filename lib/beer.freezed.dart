// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Beer _$BeerFromJson(Map<String, dynamic> json) {
  return _Beer.fromJson(json);
}

/// @nodoc
mixin _$Beer {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get tagline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeerCopyWith<Beer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeerCopyWith<$Res> {
  factory $BeerCopyWith(Beer value, $Res Function(Beer) then) =
      _$BeerCopyWithImpl<$Res, Beer>;
  @useResult
  $Res call({int id, String name, String tagline});
}

/// @nodoc
class _$BeerCopyWithImpl<$Res, $Val extends Beer>
    implements $BeerCopyWith<$Res> {
  _$BeerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tagline = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: null == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeerImplCopyWith<$Res> implements $BeerCopyWith<$Res> {
  factory _$$BeerImplCopyWith(
          _$BeerImpl value, $Res Function(_$BeerImpl) then) =
      __$$BeerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String tagline});
}

/// @nodoc
class __$$BeerImplCopyWithImpl<$Res>
    extends _$BeerCopyWithImpl<$Res, _$BeerImpl>
    implements _$$BeerImplCopyWith<$Res> {
  __$$BeerImplCopyWithImpl(_$BeerImpl _value, $Res Function(_$BeerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tagline = null,
  }) {
    return _then(_$BeerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: null == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeerImpl implements _Beer {
  const _$BeerImpl({required this.id, required this.name, this.tagline = ''});

  factory _$BeerImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeerImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final String tagline;

  @override
  String toString() {
    return 'Beer(id: $id, name: $name, tagline: $tagline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tagline, tagline) || other.tagline == tagline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, tagline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeerImplCopyWith<_$BeerImpl> get copyWith =>
      __$$BeerImplCopyWithImpl<_$BeerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeerImplToJson(
      this,
    );
  }
}

abstract class _Beer implements Beer {
  const factory _Beer(
      {required final int id,
      required final String name,
      final String tagline}) = _$BeerImpl;

  factory _Beer.fromJson(Map<String, dynamic> json) = _$BeerImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get tagline;
  @override
  @JsonKey(ignore: true)
  _$$BeerImplCopyWith<_$BeerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
