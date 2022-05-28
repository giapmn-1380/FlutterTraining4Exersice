import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

final dioClientProvider = Provider<Dio>(create: (_) => _buildClient(),);

Dio _buildClient() {
  const int timeOutMilliSecond = 30000;
  final dio = Dio(
    BaseOptions(
      baseUrl: "https://api.themoviedb.org/3",
      headers: <String, dynamic>{
        HttpHeaders.contentTypeHeader: 'application/json',
      },
      connectTimeout: timeOutMilliSecond,
      sendTimeout: timeOutMilliSecond,
      receiveTimeout: timeOutMilliSecond,
    ),
  );
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) async {
      return handler.next(options);
    },
  ));
  dio.close;
  if (kDebugMode) {
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
  }
  return dio;
}
