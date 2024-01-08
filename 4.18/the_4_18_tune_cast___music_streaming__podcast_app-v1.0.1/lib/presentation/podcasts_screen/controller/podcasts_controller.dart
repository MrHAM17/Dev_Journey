import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/podcasts_screen/models/podcasts_model.dart';/// A controller class for the PodcastsScreen.
///
/// This class manages the state of the PodcastsScreen, including the
/// current podcastsModelObj
class PodcastsController extends GetxController {Rx<PodcastsModel> podcastsModelObj = PodcastsModel().obs;

 }
