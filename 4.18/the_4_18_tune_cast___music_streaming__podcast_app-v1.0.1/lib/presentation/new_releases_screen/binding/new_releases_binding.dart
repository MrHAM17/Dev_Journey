import '../controller/new_releases_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NewReleasesScreen.
///
/// This class ensures that the NewReleasesController is created when the
/// NewReleasesScreen is first loaded.
class NewReleasesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewReleasesController());
  }
}
