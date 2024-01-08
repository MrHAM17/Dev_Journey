import 'package:flutter/material.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/product_details_screen/models/product_details_model.dart';import '../models/imageanddetails_item_model.dart';import '../models/propertydetails_item_model.dart';import '../models/images_item_model.dart';import '../models/cards_item_model.dart';/// A provider class for the ProductDetailsScreen.
///
/// This provider manages the state of the ProductDetailsScreen, including the
/// current productDetailsModelObj

// ignore_for_file: must_be_immutable
class ProductDetailsProvider extends ChangeNotifier {ProductDetailsModel productDetailsModelObj = ProductDetailsModel();

int sliderIndex = 0;

String radioGroup = "";

@override void dispose() { super.dispose(); } 
void changeRadioButton1(String value) { radioGroup = value; notifyListeners(); } 
 }
