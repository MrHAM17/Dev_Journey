import 'package:the_4_02_music_player/core/app_export.dart';
import 'package:the_4_02_music_player/presentation/home_page_container_screen/models/home_page_container_model.dart';
import 'package:the_4_02_music_player/presentation/playlist_bottomsheet/playlist_bottomsheet.dart';
import 'package:the_4_02_music_player/presentation/playlist_bottomsheet/controller/playlist_controller.dart';

/// A controller class for the HomePageContainerScreen.
///
/// This class manages the state of the HomePageContainerScreen, including the
/// current homePageContainerModelObj
class HomePageContainerController extends GetxController {
  Rx<HomePageContainerModel> homePageContainerModelObj =
      HomePageContainerModel().obs;

  @override
  void onReady() {
    Get.bottomSheet(
      PlaylistBottomsheet(
        Get.put(
          PlaylistController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
