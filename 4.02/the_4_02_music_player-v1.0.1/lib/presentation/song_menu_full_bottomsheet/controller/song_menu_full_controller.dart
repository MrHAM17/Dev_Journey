import 'package:the_4_02_music_player/core/app_export.dart';
import 'package:the_4_02_music_player/presentation/song_menu_full_bottomsheet/models/song_menu_full_model.dart';

/// A controller class for the SongMenuFullBottomsheet.
///
/// This class manages the state of the SongMenuFullBottomsheet, including the
/// current songMenuFullModelObj
class SongMenuFullController extends GetxController {
  Rx<SongMenuFullModel> songMenuFullModelObj = SongMenuFullModel().obs;
}
