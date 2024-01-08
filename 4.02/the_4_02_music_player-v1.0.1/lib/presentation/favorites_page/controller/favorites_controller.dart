import 'package:the_4_02_music_player/core/app_export.dart';
import 'package:the_4_02_music_player/presentation/favorites_page/models/favorites_model.dart';

/// A controller class for the FavoritesPage.
///
/// This class manages the state of the FavoritesPage, including the
/// current favoritesModelObj
class FavoritesController extends GetxController {
  FavoritesController(this.favoritesModelObj);

  Rx<FavoritesModel> favoritesModelObj;
}
