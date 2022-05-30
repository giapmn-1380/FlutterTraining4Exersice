import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_popular.freezed.dart';
part 'movie_popular.g.dart';

@freezed
abstract class MoivePopular implements _$MoivePopular {
  const MoivePopular._();
  factory MoivePopular({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'original_title') @Default("") String originalTitle,
    @JsonKey(name: 'title') @Default("") String title,
    @JsonKey(name: 'backdrop_path') @Default("") String backdropPath,
  @JsonKey(name: 'poster_path') @Default("") String posterPath,
    @JsonKey(name: 'overview') @Default("") String overview,
    @JsonKey(name: 'release_date') @Default("") String releaseDate,
    @JsonKey(name: 'vote_average') @Default(0) double voteAverage,
  }) = _MoivePopular;

  factory MoivePopular.fromJson(Map<String, dynamic> json) =>
      _$MoivePopularFromJson(json);
}
