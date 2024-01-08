import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/gallery_page/models/gallery_model.dart';
import '../models/gallery_item_model.dart';

/// A provider class for the GalleryPage.
///
/// This provider manages the state of the GalleryPage, including the
/// current galleryModelObj

// ignore_for_file: must_be_immutable
class GalleryProvider extends ChangeNotifier {
  GalleryModel galleryModelObj = GalleryModel();

  @override
  void dispose() {
    super.dispose();
  }
}
