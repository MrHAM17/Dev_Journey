import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/presentation/saved_page/models/saved_model.dart';

/// A controller class for the SavedPage.
///
/// This class manages the state of the SavedPage, including the
/// current savedModelObj
class SavedController extends GetxController {
  SavedController(this.savedModelObj);

  Rx<SavedModel> savedModelObj;
}
