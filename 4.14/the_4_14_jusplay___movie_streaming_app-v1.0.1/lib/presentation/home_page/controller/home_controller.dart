import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/presentation/home_page/models/home_model.dart';

/// A controller class for the HomePage.
///
/// This class manages the state of the HomePage, including the
/// current homeModelObj
class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  var id = Get.arguments[NavigationArgs.id];

  Rx<HomeModel> homeModelObj;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.profilePage,
    ); // TODO: implement Actions
    Get.toNamed(
      AppRoutes.savedPage,
    );
    Get.toNamed(
      AppRoutes.searchPage,
    ); // TODO: implement Actions
  }
}
