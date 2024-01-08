import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/my_library_page/models/my_library_model.dart';/// A controller class for the MyLibraryPage.
///
/// This class manages the state of the MyLibraryPage, including the
/// current myLibraryModelObj
class MyLibraryController extends GetxController {MyLibraryController(this.myLibraryModelObj);

Rx<MyLibraryModel> myLibraryModelObj;

@override void onReady() { Get.toNamed(AppRoutes.playlistsScreen, );Get.toNamed(AppRoutes.downloadsScreen, ); } 
 }
