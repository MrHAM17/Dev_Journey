import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/review_product_screen/models/review_product_model.dart';import '../models/reviewproduct_item_model.dart';/// A provider class for the ReviewProductScreen.
///
/// This provider manages the state of the ReviewProductScreen, including the
/// current reviewProductModelObj

// ignore_for_file: must_be_immutable
class ReviewProductProvider extends ChangeNotifier {ReviewProductModel reviewProductModelObj = ReviewProductModel();

@override void dispose() { super.dispose(); } 
 }
