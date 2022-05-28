// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_popular_reponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoivePopularResponse _$MoivePopularResponseFromJson(Map<String, dynamic> json) {
  return _MoivePopularResponse.fromJson(json);
}

/// @nodoc
mixin _$MoivePopularResponse {
  @JsonKey(name: 'page')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<MoivePopular> get listMoviePopulars =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoivePopularResponseCopyWith<MoivePopularResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoivePopularResponseCopyWith<$Res> {
  factory $MoivePopularResponseCopyWith(MoivePopularResponse value,
          $Res Function(MoivePopularResponse) then) =
      _$MoivePopularResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'page') int id,
      @JsonKey(name: 'results') List<MoivePopular> listMoviePopulars,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class _$MoivePopularResponseCopyWithImpl<$Res>
    implements $MoivePopularResponseCopyWith<$Res> {
  _$MoivePopularResponseCopyWithImpl(this._value, this._then);

  final MoivePopularResponse _value;
  // ignore: unused_field
  final $Res Function(MoivePopularResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? listMoviePopulars = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      listMoviePopulars: listMoviePopulars == freezed
          ? _value.listMoviePopulars
          : listMoviePopulars // ignore: cast_nullable_to_non_nullable
              as List<MoivePopular>,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_MoivePopularResponseCopyWith<$Res>
    implements $MoivePopularResponseCopyWith<$Res> {
  factory _$$_MoivePopularResponseCopyWith(_$_MoivePopularResponse value,
          $Res Function(_$_MoivePopularResponse) then) =
      __$$_MoivePopularResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'page') int id,
      @JsonKey(name: 'results') List<MoivePopular> listMoviePopulars,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class __$$_MoivePopularResponseCopyWithImpl<$Res>
    extends _$MoivePopularResponseCopyWithImpl<$Res>
    implements _$$_MoivePopularResponseCopyWith<$Res> {
  __$$_MoivePopularResponseCopyWithImpl(_$_MoivePopularResponse _value,
      $Res Function(_$_MoivePopularResponse) _then)
      : super(_value, (v) => _then(v as _$_MoivePopularResponse));

  @override
  _$_MoivePopularResponse get _value => super._value as _$_MoivePopularResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? listMoviePopulars = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$_MoivePopularResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      listMoviePopulars: listMoviePopulars == freezed
          ? _value._listMoviePopulars
          : listMoviePopulars // ignore: cast_nullable_to_non_nullable
              as List<MoivePopular>,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoivePopularResponse extends _MoivePopularResponse {
  _$_MoivePopularResponse(
      {@JsonKey(name: 'page')
          this.id = 0,
      @JsonKey(name: 'results')
          required final List<MoivePopular> listMoviePopulars,
      @JsonKey(name: 'total_pages')
          this.totalPages = 0,
      @JsonKey(name: 'total_results')
          this.totalResults = 0})
      : _listMoviePopulars = listMoviePopulars,
        super._();

  factory _$_MoivePopularResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MoivePopularResponseFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int id;
  final List<MoivePopular> _listMoviePopulars;
  @override
  @JsonKey(name: 'results')
  List<MoivePopular> get listMoviePopulars {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listMoviePopulars);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;

  @override
  String toString() {
    return 'MoivePopularResponse(id: $id, listMoviePopulars: $listMoviePopulars, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoivePopularResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other._listMoviePopulars, _listMoviePopulars) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_listMoviePopulars),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(totalResults));

  @JsonKey(ignore: true)
  @override
  _$$_MoivePopularResponseCopyWith<_$_MoivePopularResponse> get copyWith =>
      __$$_MoivePopularResponseCopyWithImpl<_$_MoivePopularResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoivePopularResponseToJson(this);
  }
}

abstract class _MoivePopularResponse extends MoivePopularResponse {
  factory _MoivePopularResponse(
      {@JsonKey(name: 'page')
          final int id,
      @JsonKey(name: 'results')
          required final List<MoivePopular> listMoviePopulars,
      @JsonKey(name: 'total_pages')
          final int totalPages,
      @JsonKey(name: 'total_results')
          final int totalResults}) = _$_MoivePopularResponse;
  _MoivePopularResponse._() : super._();

  factory _MoivePopularResponse.fromJson(Map<String, dynamic> json) =
      _$_MoivePopularResponse.fromJson;

  @override
  @JsonKey(name: 'page')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'results')
  List<MoivePopular> get listMoviePopulars =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MoivePopularResponseCopyWith<_$_MoivePopularResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
