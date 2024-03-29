// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_products_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatalogProductsResponse _$CatalogProductsResponseFromJson(
    Map<String, dynamic> json) {
  return _CatalogProductsResponse.fromJson(json);
}

/// @nodoc
mixin _$CatalogProductsResponse {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<Product> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogProductsResponseCopyWith<CatalogProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogProductsResponseCopyWith<$Res> {
  factory $CatalogProductsResponseCopyWith(CatalogProductsResponse value,
          $Res Function(CatalogProductsResponse) then) =
      _$CatalogProductsResponseCopyWithImpl<$Res, CatalogProductsResponse>;
  @useResult
  $Res call({int count, String? next, String? previous, List<Product> results});
}

/// @nodoc
class _$CatalogProductsResponseCopyWithImpl<$Res,
        $Val extends CatalogProductsResponse>
    implements $CatalogProductsResponseCopyWith<$Res> {
  _$CatalogProductsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatalogProductsResponseCopyWith<$Res>
    implements $CatalogProductsResponseCopyWith<$Res> {
  factory _$$_CatalogProductsResponseCopyWith(_$_CatalogProductsResponse value,
          $Res Function(_$_CatalogProductsResponse) then) =
      __$$_CatalogProductsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, String? next, String? previous, List<Product> results});
}

/// @nodoc
class __$$_CatalogProductsResponseCopyWithImpl<$Res>
    extends _$CatalogProductsResponseCopyWithImpl<$Res,
        _$_CatalogProductsResponse>
    implements _$$_CatalogProductsResponseCopyWith<$Res> {
  __$$_CatalogProductsResponseCopyWithImpl(_$_CatalogProductsResponse _value,
      $Res Function(_$_CatalogProductsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$_CatalogProductsResponse(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatalogProductsResponse implements _CatalogProductsResponse {
  const _$_CatalogProductsResponse(
      {required this.count,
      this.next,
      this.previous,
      required final List<Product> results})
      : _results = results;

  factory _$_CatalogProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CatalogProductsResponseFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<Product> _results;
  @override
  List<Product> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'CatalogProductsResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogProductsResponse &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogProductsResponseCopyWith<_$_CatalogProductsResponse>
      get copyWith =>
          __$$_CatalogProductsResponseCopyWithImpl<_$_CatalogProductsResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatalogProductsResponseToJson(
      this,
    );
  }
}

abstract class _CatalogProductsResponse implements CatalogProductsResponse {
  const factory _CatalogProductsResponse(
      {required final int count,
      final String? next,
      final String? previous,
      required final List<Product> results}) = _$_CatalogProductsResponse;

  factory _CatalogProductsResponse.fromJson(Map<String, dynamic> json) =
      _$_CatalogProductsResponse.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<Product> get results;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogProductsResponseCopyWith<_$_CatalogProductsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
