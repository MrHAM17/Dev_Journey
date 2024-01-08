import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_4_09_social_dashboards_ui_kit/presentation/gallery_page/models/gallery_model.dart';

/// A controller class for the GalleryPage.
///
/// This class manages the state of the GalleryPage, including the
/// current galleryModelObj
class GalleryController extends GetxController {
  GalleryController(this.galleryModelObj);

  Rx<GalleryModel> galleryModelObj;
}
