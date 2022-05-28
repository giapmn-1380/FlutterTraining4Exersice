import 'package:giapmn_training_4_exercise/data/models/common/result.dart';
import 'package:giapmn_training_4_exercise/data/models/movie_popular.dart';
import 'package:giapmn_training_4_exercise/data/models/movie_popular/movie_popular_reponse.dart';
import 'package:giapmn_training_4_exercise/data/remote/app_api_client.dart';
import 'package:giapmn_training_4_exercise/data/repository/home_repository.dart';
import 'package:provider/provider.dart';

final homeRepositoryProdiver = Provider<HomeRepository>(create: (ref) => HomeRepositoryImpl(ref.read<AppApiClient>()));

class HomeRepositoryImpl extends HomeRepository {

  final AppApiClient apiClient;
  HomeRepositoryImpl(this.apiClient);

  @override
  Future<Result<MoivePopularResponse>> getPopulars() async {
    final result = await apiClient.getPopulars();
    return result;
  }
}