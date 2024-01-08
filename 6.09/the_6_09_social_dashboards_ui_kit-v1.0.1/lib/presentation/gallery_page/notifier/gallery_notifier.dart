import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/gallery_item_model.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/gallery_page/models/gallery_model.dart';
part 'gallery_state.dart';

final galleryNotifier = StateNotifierProvider<GalleryNotifier, GalleryState>(
  (ref) => GalleryNotifier(GalleryState(
    galleryModelObj: GalleryModel(galleryItemList: [
      GalleryItemModel(
          image: ImageConstant.imgImage99x99,
          image1: ImageConstant.imgImage12,
          image2: ImageConstant.imgImage13,
          image3: ImageConstant.imgImage14,
          image4: ImageConstant.imgImage15,
          image5: ImageConstant.imgImage16,
          image6: ImageConstant.imgImage17,
          image7: ImageConstant.imgImage18,
          image8: ImageConstant.imgImage19)
    ]),
  )),
);

/// A notifier that manages the state of a Gallery according to the event that is dispatched to it.
class GalleryNotifier extends StateNotifier<GalleryState> {
  GalleryNotifier(GalleryState state) : super(state) {}
}
