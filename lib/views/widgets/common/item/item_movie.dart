import 'package:flutter/material.dart';
import 'package:giapmn_training_4_exercise/data/models/movie_popular.dart';
import 'package:giapmn_training_4_exercise/styles/custom_text_style.dart';

class ItemMovie extends StatelessWidget {

  final MoivePopular moviePopular;
  final Function()? onClickItemMovie;

  const ItemMovie({Key? key, required this.moviePopular, this.onClickItemMovie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClickItemMovie,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0, vertical: 10.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: SizedBox(
                width: 100,
                child: Image.network(
                    "https://image.tmdb.org/t/p/w200${moviePopular.posterPath}"),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(moviePopular.title,
                      style: CustomTextStyle.fontSize20),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    moviePopular.overview,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}