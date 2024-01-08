import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/product_tour_one_screen/models/product_tour_one_model.dart';/// A provider class for the ProductTourOneScreen.
///
/// This provider manages the state of the ProductTourOneScreen, including the
/// current productTourOneModelObj

// ignore_for_file: must_be_immutable
class ProductTourOneProvider extends ChangeNotifier {ProductTourOneModel productTourOneModelObj = ProductTourOneModel();

@override void dispose() { super.dispose(); } 
 }
