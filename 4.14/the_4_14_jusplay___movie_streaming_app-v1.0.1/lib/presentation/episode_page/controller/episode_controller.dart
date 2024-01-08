import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/presentation/episode_page/models/episode_model.dart';

/// A controller class for the EpisodePage.
///
/// This class manages the state of the EpisodePage, including the
/// current episodeModelObj
class EpisodeController extends GetxController {
  EpisodeController(this.episodeModelObj);

  Rx<EpisodeModel> episodeModelObj;
}
