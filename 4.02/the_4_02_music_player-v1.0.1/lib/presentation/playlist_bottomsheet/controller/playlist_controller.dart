import 'package:the_4_02_music_player/core/app_export.dart';
import 'package:the_4_02_music_player/presentation/playlist_bottomsheet/models/playlist_model.dart';

/// A controller class for the PlaylistBottomsheet.
///
/// This class manages the state of the PlaylistBottomsheet, including the
/// current playlistModelObj
class PlaylistController extends GetxController {
  Rx<PlaylistModel> playlistModelObj = PlaylistModel().obs;
}
