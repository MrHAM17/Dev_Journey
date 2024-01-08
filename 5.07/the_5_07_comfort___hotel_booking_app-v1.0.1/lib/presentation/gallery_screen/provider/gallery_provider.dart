import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/gallery_screen/models/gallery_model.dart';import '../models/gallery_item_model.dart';/// A provider class for the GalleryScreen.
///
/// This provider manages the state of the GalleryScreen, including the
/// current galleryModelObj

// ignore_for_file: must_be_immutable
class GalleryProvider extends ChangeNotifier {GalleryModel galleryModelObj = GalleryModel();

@override void dispose() { super.dispose(); } 
 }
