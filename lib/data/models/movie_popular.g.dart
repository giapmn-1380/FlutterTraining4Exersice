// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_popular.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoivePopular _$$_MoivePopularFromJson(Map<String, dynamic> json) =>
    _$_MoivePopular(
      id: json['id'] as int? ?? 0,
      originalTitle: json['original_title'] as String? ?? "",
      title: json['title'] as String? ?? "",
      backdropPath: json['backdrop_path'] as String? ?? "",
      posterPath: json['poster_path'] as String? ?? "",
      overview: json['overview'] as String? ?? "",
      releaseDate: json['release_date'] as String? ?? "",
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_MoivePopularToJson(_$_MoivePopular instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'title': instance.title,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
    };
