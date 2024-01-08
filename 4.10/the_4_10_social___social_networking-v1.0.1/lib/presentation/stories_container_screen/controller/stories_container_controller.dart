import 'package:the_4_10_social___social_networking/core/app_export.dart';
import 'package:the_4_10_social___social_networking/presentation/stories_container_screen/models/stories_container_model.dart';

/// A controller class for the StoriesContainerScreen.
///
/// This class manages the state of the StoriesContainerScreen, including the
/// current storiesContainerModelObj
class StoriesContainerController extends GetxController {
  Rx<StoriesContainerModel> storiesContainerModelObj =
      StoriesContainerModel().obs;
}
