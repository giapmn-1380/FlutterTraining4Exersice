import 'package:flutter/material.dart';
import 'package:giapmn_training_4_exercise/data/models/movie_popular.dart';
import 'package:giapmn_training_4_exercise/data/remote/app_error.dart';
import 'package:giapmn_training_4_exercise/data/repository/home_repository.dart';
import 'package:giapmn_training_4_exercise/viewmodels/common/error_notifier.dart';
import 'package:giapmn_training_4_exercise/viewmodels/loading/loading_state_notifier.dart';

class PopularViewModal extends ChangeNotifier {

  final HomeRepository homeRepository;
  final LoadingStateNotifier loadingState;
  final ErrorHandler errorHandler;
  PopularViewModal(this.homeRepository, this.loadingState, this.errorHandler);


  bool _isSuccess = false;
  bool get isSuccess => _isSuccess;

  List<MoivePopular> list = [];
  int page = 1;

  void getPopularList() async {
    loadingState.toLoading();
    try {
      final result = (await homeRepository.getPopulars(page)).dataOrThrow;
      loadingState.toIdle();
      list.addAll(result.listMoviePopulars);
      _isSuccess = true;
    } catch (e) {
      if (e is AppError) {
        errorHandler.setError(e);
      }
      loadingState.toIdle();
    }
    notifyListeners();
  }

  void nextPage() {
    page++;
  }

  void resetPage() {
    list.clear();
    page = 1;
  }
}
