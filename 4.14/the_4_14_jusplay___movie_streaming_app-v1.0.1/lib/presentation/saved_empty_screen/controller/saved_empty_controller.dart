import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/presentation/saved_empty_screen/models/saved_empty_model.dart';

/// A controller class for the SavedEmptyScreen.
///
/// This class manages the state of the SavedEmptyScreen, including the
/// current savedEmptyModelObj
class SavedEmptyController extends GetxController {
  Rx<SavedEmptyModel> savedEmptyModelObj = SavedEmptyModel().obs;
}
