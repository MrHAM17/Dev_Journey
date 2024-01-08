import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/presentation/home_recently_watched_page/models/home_recently_watched_model.dart';

/// A controller class for the HomeRecentlyWatchedPage.
///
/// This class manages the state of the HomeRecentlyWatchedPage, including the
/// current homeRecentlyWatchedModelObj
class HomeRecentlyWatchedController extends GetxController {
  HomeRecentlyWatchedController(this.homeRecentlyWatchedModelObj);

  Rx<HomeRecentlyWatchedModel> homeRecentlyWatchedModelObj;

  Rx<int> sliderIndex = 0.obs;
}
