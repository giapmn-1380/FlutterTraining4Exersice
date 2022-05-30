import 'dart:io';

import 'package:flutter/material.dart';
import 'package:giapmn_training_4_exercise/data/remote/app_api_client.dart';
import 'package:giapmn_training_4_exercise/data/remote/dio_client.dart';
import 'package:giapmn_training_4_exercise/data/repository/home_repository_impl.dart';
import 'package:giapmn_training_4_exercise/viewmodels/common/common_provider.dart';
import 'package:giapmn_training_4_exercise/views/screens/movie_detail/movie_detail_page.dart';
import 'package:giapmn_training_4_exercise/views/screens/popular/popular_page.dart';
import 'package:provider/provider.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(MultiProvider(
    providers: [
      errorProvider,
      dioClientProvider,
      appApiClientProvider,
      homeRepositoryProdiver,
      loadingProvider,
      popularProvider
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {MovieDetailPage.routeName: (context) => const MovieDetailPage()},
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const PopularPage(),
    );
  }
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}