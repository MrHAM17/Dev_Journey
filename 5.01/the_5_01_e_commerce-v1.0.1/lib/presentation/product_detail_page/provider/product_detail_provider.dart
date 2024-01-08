import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/product_detail_page/models/product_detail_model.dart';import '../models/blue_item_model.dart';import '../models/products1_item_model.dart';import '../models/recomended_item_model.dart';/// A provider class for the ProductDetailPage.
///
/// This provider manages the state of the ProductDetailPage, including the
/// current productDetailModelObj

// ignore_for_file: must_be_immutable
class ProductDetailProvider extends ChangeNotifier {ProductDetailModel productDetailModelObj = ProductDetailModel();

@override void dispose() { super.dispose(); } 
 }
