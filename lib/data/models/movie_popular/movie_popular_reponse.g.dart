// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_popular_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoivePopularResponse _$$_MoivePopularResponseFromJson(
        Map<String, dynamic> json) =>
    _$_MoivePopularResponse(
      id: json['page'] as int? ?? 0,
      listMoviePopulars: (json['results'] as List<dynamic>)
          .map((e) => MoivePopular.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int? ?? 0,
      totalResults: json['total_results'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MoivePopularResponseToJson(
        _$_MoivePopularResponse instance) =>
    <String, dynamic>{
      'page': instance.id,
      'results': instance.listMoviePopulars,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
