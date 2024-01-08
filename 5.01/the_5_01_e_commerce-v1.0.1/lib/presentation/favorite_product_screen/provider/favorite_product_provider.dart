import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/favorite_product_screen/models/favorite_product_model.dart';import '../models/favoriteproduct_item_model.dart';/// A provider class for the FavoriteProductScreen.
///
/// This provider manages the state of the FavoriteProductScreen, including the
/// current favoriteProductModelObj

// ignore_for_file: must_be_immutable
class FavoriteProductProvider extends ChangeNotifier {FavoriteProductModel favoriteProductModelObj = FavoriteProductModel();

@override void dispose() { super.dispose(); } 
 }
