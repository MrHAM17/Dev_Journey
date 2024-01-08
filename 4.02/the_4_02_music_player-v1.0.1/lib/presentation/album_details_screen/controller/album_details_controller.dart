import 'package:the_4_02_music_player/core/app_export.dart';
import 'package:the_4_02_music_player/presentation/album_details_screen/models/album_details_model.dart';

/// A controller class for the AlbumDetailsScreen.
///
/// This class manages the state of the AlbumDetailsScreen, including the
/// current albumDetailsModelObj
class AlbumDetailsController extends GetxController {
  Rx<AlbumDetailsModel> albumDetailsModelObj = AlbumDetailsModel().obs;
}
