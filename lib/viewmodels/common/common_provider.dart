

import 'package:giapmn_training_4_exercise/data/repository/home_repository.dart';
import 'package:giapmn_training_4_exercise/viewmodels/common/error_notifier.dart';
import 'package:giapmn_training_4_exercise/viewmodels/loading/loading_state_notifier.dart';
import 'package:giapmn_training_4_exercise/views/screens/popular/popular_view_modal.dart';
import 'package:provider/provider.dart';

final errorProvider = ChangeNotifierProvider(create: (_) => ErrorHandler());
final loadingProvider = ChangeNotifierProvider(create: (_) => LoadingStateNotifier());
final popularProvider = ChangeNotifierProvider(create: (ref) => PopularViewModal(ref.read<HomeRepository>(), ref.read<LoadingStateNotifier>(), ref.read<ErrorHandler>()));