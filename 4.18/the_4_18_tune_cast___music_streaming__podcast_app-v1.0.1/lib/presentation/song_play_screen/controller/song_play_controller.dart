import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/song_play_screen/models/song_play_model.dart';/// A controller class for the SongPlayScreen.
///
/// This class manages the state of the SongPlayScreen, including the
/// current songPlayModelObj
class SongPlayController extends GetxController {Rx<SongPlayModel> songPlayModelObj = SongPlayModel().obs;

 }
