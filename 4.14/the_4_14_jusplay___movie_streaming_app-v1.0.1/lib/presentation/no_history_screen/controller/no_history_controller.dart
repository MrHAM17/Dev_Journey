import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/presentation/no_history_screen/models/no_history_model.dart';

/// A controller class for the NoHistoryScreen.
///
/// This class manages the state of the NoHistoryScreen, including the
/// current noHistoryModelObj
class NoHistoryController extends GetxController {
  Rx<NoHistoryModel> noHistoryModelObj = NoHistoryModel().obs;
}
