import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/presentation/home_recently_watched_container_screen/models/home_recently_watched_container_model.dart';

/// A controller class for the HomeRecentlyWatchedContainerScreen.
///
/// This class manages the state of the HomeRecentlyWatchedContainerScreen, including the
/// current homeRecentlyWatchedContainerModelObj
class HomeRecentlyWatchedContainerController extends GetxController {
  Rx<HomeRecentlyWatchedContainerModel> homeRecentlyWatchedContainerModelObj =
      HomeRecentlyWatchedContainerModel().obs;
}
