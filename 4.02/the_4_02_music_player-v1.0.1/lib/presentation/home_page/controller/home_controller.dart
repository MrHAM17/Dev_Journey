import 'package:the_4_02_music_player/core/app_export.dart';
import 'package:the_4_02_music_player/presentation/home_page/models/home_model.dart';

/// A controller class for the HomePage.
///
/// This class manages the state of the HomePage, including the
/// current homeModelObj
class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  Rx<HomeModel> homeModelObj;
}
