import 'package:giapmn_training_4_exercise/data/models/common/result.dart';
import 'package:giapmn_training_4_exercise/data/models/movie_popular/movie_popular_reponse.dart';

abstract class HomeRepository {
  Future<Result<MoivePopularResponse>> getPopulars(int page);
}