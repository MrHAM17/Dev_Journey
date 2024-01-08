import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/promotion_screen/models/promotion_model.dart';/// A provider class for the PromotionScreen.
///
/// This provider manages the state of the PromotionScreen, including the
/// current promotionModelObj

// ignore_for_file: must_be_immutable
class PromotionProvider extends ChangeNotifier {PromotionModel promotionModelObj = PromotionModel();

@override void dispose() { super.dispose(); } 
 }
