import '../controller/detail_page_ten_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailPageTenScreen.
///
/// This class ensures that the DetailPageTenController is created when the
/// DetailPageTenScreen is first loaded.
class DetailPageTenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailPageTenController());
  }
}
