import 'package:flutter/material.dart';
import 'package:giapmn_training_4_exercise/gen/assets.gen.dart';
import 'package:giapmn_training_4_exercise/navigation/params/movie_detail_params.dart';
import 'package:giapmn_training_4_exercise/styles/custom_color.dart';
import 'package:giapmn_training_4_exercise/views/screens/popular/popular_view_modal.dart';
import 'package:giapmn_training_4_exercise/views/widgets/common/progress/circle_graph.dart';
import 'package:provider/provider.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({Key? key}) : super(key: key);

  static const routeName = '/movieDetailPage';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as MovieDetailParams;
    final movieDetail = context.watch<PopularViewModal>().list[args.indexMovie];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Movie detail',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        elevation: 0,
        centerTitle: true,
      ),
      body: Scrollbar(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.network(
                      "https://image.tmdb.org/t/p/w500${movieDetail.backdropPath}"),
                  Positioned(
                    bottom: 0,
                    left: 20,
                    child: SizedBox(
                      width: 100,
                      child: Image.network(
                          "https://image.tmdb.org/t/p/w200${movieDetail.posterPath}"),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        movieDetail.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                    CircleGraph(
                        currentProgress: 6,
                        totalProgress: 10,
                        progressText: Text(movieDetail.voteAverage.toString()))
                  ],
                ),
              ),
              const Divider(
                height: 2,
                color: Colors.grey,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 30,
                              child: Assets.images.icReviews.image(fit: BoxFit.contain),
                            ),
                          ),
                          const Text(
                            "Reviews",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      )),
                  Container(
                    width: 2,
                    height: 76,
                    decoration: BoxDecoration(color: CustomColor.grey),
                  ),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 30,
                              child: Assets.images.icTrailers.image(fit: BoxFit.contain),
                            ),
                          ),
                          const Text(
                            "Trailers",
                            style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      )),
                ],
              ),
              const Divider(
                height: 2,
                color: Colors.grey,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: const [
                          Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Genre",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                          Text(
                            "Drama",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Release",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                          Text(
                            movieDetail.releaseDate,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ],
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 2,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  movieDetail.overview,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
