import '../controller/lyrics_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LyricsScreen.
///
/// This class ensures that the LyricsController is created when the
/// LyricsScreen is first loaded.
class LyricsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LyricsController());
  }
}
