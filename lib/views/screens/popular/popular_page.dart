import 'package:flutter/material.dart';
import 'package:giapmn_training_4_exercise/navigation/params/movie_detail_params.dart';
import 'package:giapmn_training_4_exercise/styles/custom_color.dart';
import 'package:giapmn_training_4_exercise/styles/custom_shape.dart';
import 'package:giapmn_training_4_exercise/styles/custom_text_style.dart';
import 'package:giapmn_training_4_exercise/views/screens/movie_detail/movie_detail_page.dart';
import 'package:giapmn_training_4_exercise/views/screens/popular/popular_view_modal.dart';
import 'package:giapmn_training_4_exercise/views/widgets/common/error/container_error_handling.dart';
import 'package:provider/provider.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listMovie = context.watch<PopularViewModal>().list;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Popular')),
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        elevation: 0,
      ),
      body: ContainerErrorHandling(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: listMovie.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              MovieDetailPage.routeName,
                              arguments: MovieDetailParams(index),
                            );
                          },
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
                                        "https://image.tmdb.org/t/p/w200${listMovie[index].posterPath}"),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(listMovie[index].title,
                                          style: CustomTextStyle.fontSize20),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        listMovie[index].overview,
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
                      })),
              ElevatedButton(
                  onPressed: () {
                    context.read<PopularViewModal>().getPopularList();
                  },
                  child: Text("GET STARTED",
                      style: TextStyle(
                          color: CustomColor.bgPrimary, fontSize: 18.0)),
                  style: ElevatedButton.styleFrom(
                    elevation: 2,
                    primary: Colors.white,
                    minimumSize: const Size(double.infinity, 60.0),
                    shape: CustomShape.buttonShapeRadius30
                        .copyWith(side: BorderSide.none),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
