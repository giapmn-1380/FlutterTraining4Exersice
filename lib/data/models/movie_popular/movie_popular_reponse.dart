import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:giapmn_training_4_exercise/data/models/movie_popular.dart';

part 'movie_popular_reponse.freezed.dart';
part 'movie_popular_reponse.g.dart';

@freezed
abstract class MoivePopularResponse implements _$MoivePopularResponse {
  const MoivePopularResponse._();
  factory MoivePopularResponse({
    @JsonKey(name: 'page') @Default(0) int id,
    @JsonKey(name: 'results') required List<MoivePopular> listMoviePopulars,
    @JsonKey(name: 'total_pages') @Default(0) int totalPages,
    @JsonKey(name: 'total_results') @Default(0) int totalResults,

  }) = _MoivePopularResponse;

  factory MoivePopularResponse.fromJson(Map<String, dynamic> json) =>
      _$MoivePopularResponseFromJson(json);
}
