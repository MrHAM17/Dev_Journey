import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/review_tab_container_screen/models/review_tab_container_model.dart';/// A provider class for the ReviewTabContainerScreen.
///
/// This provider manages the state of the ReviewTabContainerScreen, including the
/// current reviewTabContainerModelObj

// ignore_for_file: must_be_immutable
class ReviewTabContainerProvider extends ChangeNotifier {ReviewTabContainerModel reviewTabContainerModelObj = ReviewTabContainerModel();

@override void dispose() { super.dispose(); } 
 }
