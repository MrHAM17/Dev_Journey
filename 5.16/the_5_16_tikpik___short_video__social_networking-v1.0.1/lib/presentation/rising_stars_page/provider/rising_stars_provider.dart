import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/rising_stars_page/models/rising_stars_model.dart';import '../models/risingstars_item_model.dart';/// A provider class for the RisingStarsPage.
///
/// This provider manages the state of the RisingStarsPage, including the
/// current risingStarsModelObj

// ignore_for_file: must_be_immutable
class RisingStarsProvider extends ChangeNotifier {RisingStarsModel risingStarsModelObj = RisingStarsModel();

@override void dispose() { super.dispose(); } 
 }
