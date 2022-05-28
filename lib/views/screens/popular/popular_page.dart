import 'package:flutter/material.dart';
import 'package:giapmn_training_4_exercise/styles/custom_color.dart';
import 'package:giapmn_training_4_exercise/styles/custom_shape.dart';
import 'package:giapmn_training_4_exercise/views/screens/popular/popular_view_modal.dart';
import 'package:giapmn_training_4_exercise/views/widgets/common/error/container_error_handling.dart';
import 'package:provider/provider.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerErrorHandling(
        child: Column(
          children: [
            Expanded(child: Text("Size: ${context.watch<PopularViewModal>().list.length}")),
            ElevatedButton(
                onPressed: () {
                  context.read<PopularViewModal>().getPopularList();
                },
                child: Text("GET STARTED",
                    style:
                        TextStyle(color: CustomColor.bgPrimary, fontSize: 18.0)),
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
    );
  }
}
