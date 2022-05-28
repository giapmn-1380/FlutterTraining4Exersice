import 'package:flutter/cupertino.dart';
import 'package:giapmn_training_4_exercise/viewmodels/common/error_notifier.dart';
import 'package:giapmn_training_4_exercise/views/widgets/common/dialog/alert_dialog.dart';
import 'package:giapmn_training_4_exercise/views/widgets/common/progress/container_with_loading.dart';
import 'package:provider/provider.dart';

class ContainerErrorHandling extends StatelessWidget {
  const ContainerErrorHandling({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    // Check and show error when call api
    final appError = context
        .watch<ErrorHandler>()
        .appError;
    if (appError != null) {
      Future.delayed(Duration.zero, () {
        // user expired show dialog go to IAP screen
        showAlertDialog(
          context: context,
          barrierDismissible: true,
          title: 'Error',
          content: 'Status: ${appError.statusCode}, Message: ${appError
              .message}',
          positiveActionPressed: () {},
          positiveActionTitle: 'OK',
          // handle when user tap outside dialog.
        );
      });
    }

    return ContainerWithLoading(child: child);
  }
}
