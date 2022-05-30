import 'package:flutter/material.dart';
import 'package:giapmn_training_4_exercise/navigation/params/movie_detail_params.dart';
import 'package:giapmn_training_4_exercise/styles/custom_color.dart';
import 'package:giapmn_training_4_exercise/styles/custom_shape.dart';
import 'package:giapmn_training_4_exercise/styles/custom_text_style.dart';
import 'package:giapmn_training_4_exercise/views/screens/movie_detail/movie_detail_page.dart';
import 'package:giapmn_training_4_exercise/views/screens/popular/popular_view_modal.dart';
import 'package:giapmn_training_4_exercise/views/widgets/common/error/container_error_handling.dart';
import 'package:giapmn_training_4_exercise/views/widgets/common/item/item_movie.dart';
import 'package:provider/provider.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  State<PopularPage> createState() => _PopularPageState();


}

class _PopularPageState extends State<PopularPage> {

  late ScrollController controller;


  @override
  void initState() {
    super.initState();
    controller = ScrollController()..addListener(_scrollListener);
    context.read<PopularViewModal>().getPopularList();
  }

  @override
  void dispose() {
    controller.removeListener(_scrollListener);
    super.dispose();
  }

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
          child: RefreshIndicator(
            onRefresh: () async {
              context.read<PopularViewModal>().resetPage();
              context.read<PopularViewModal>().getPopularList();
            },
            child: ListView.builder(
                controller: controller,
                itemCount: listMovie.length,
                itemBuilder: (context, index) {
                  return ItemMovie(moviePopular: listMovie[index], onClickItemMovie: () {
                    Navigator.pushNamed(
                      context,
                      MovieDetailPage.routeName,
                      arguments: MovieDetailParams(index),
                    );
                  },);
                }),
          ),
        ),
      ),
    );
  }

  void _scrollListener() {
    if (controller.position.extentAfter < 500) {
      context.read<PopularViewModal>().nextPage();
      context.read<PopularViewModal>().getPopularList();
    }
  }
}
