import 'package:flutter/foundation.dart';
import 'package:giapmn_training_4_exercise/data/remote/app_error.dart';

class ErrorHandler extends ChangeNotifier {
  AppError? _appError;

  get appError => _appError;

  void setError(AppError appError) {
    _appError = appError;
  }

  void resetError() {
    _appError = null;
  }
}
