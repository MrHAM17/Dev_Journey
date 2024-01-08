import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/presentation/select_saved_screen/models/select_saved_model.dart';

/// A controller class for the SelectSavedScreen.
///
/// This class manages the state of the SelectSavedScreen, including the
/// current selectSavedModelObj
class SelectSavedController extends GetxController {
  Rx<SelectSavedModel> selectSavedModelObj = SelectSavedModel().obs;
}
