import 'package:flutter/cupertino.dart';
import 'package:giapmn_training_4_exercise/viewmodels/loading/loading_state_notifier.dart';
import 'package:giapmn_training_4_exercise/views/widgets/common/progress/primary_progress_indicator.dart';
import 'package:provider/provider.dart';

class ContainerWithLoading extends StatelessWidget {
  const ContainerWithLoading({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<LoadingStateNotifier>();
    return Stack(children: [
      child,
      state.isLoading ? const PrimaryProgressIndicator() : const SizedBox(),
    ]);
  }

}
