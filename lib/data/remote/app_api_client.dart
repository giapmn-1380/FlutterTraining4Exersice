import 'package:dio/dio.dart';
import 'package:giapmn_training_4_exercise/data/models/common/json.dart';
import 'package:giapmn_training_4_exercise/data/models/common/result.dart';
import 'package:giapmn_training_4_exercise/data/models/movie_popular.dart';
import 'package:giapmn_training_4_exercise/data/models/movie_popular/movie_popular_reponse.dart';
import 'package:giapmn_training_4_exercise/viewmodels/common/error_notifier.dart';
import 'package:provider/provider.dart';


final appApiClientProvider = Provider<AppApiClient>(
  create: (ref) => _AppApiClientImpl(ref.read<Dio>(), ref.read<ErrorHandler>()),
);

abstract class AppApiClient {
  const AppApiClient();
  Future<Result<MoivePopularResponse>> getPopulars(int page);
}

class _AppApiClientImpl extends AppApiClient {
  _AppApiClientImpl(this._api, this.errorHandler) : super();

  final Dio _api;
  final ErrorHandler errorHandler;

  @override
  Future<Result<MoivePopularResponse>> getPopulars(int page) async {
    return Result.guardFuture(() async {
      final response = await _api.get<Json>("/movie/popular", queryParameters: {
        "api_key": "7757b7c1ccc4f2a0dd1785abd0543677",
        "page": page
      });
      return MoivePopularResponse.fromJson(response.data!);
    }, errorHandler);
  }
}
