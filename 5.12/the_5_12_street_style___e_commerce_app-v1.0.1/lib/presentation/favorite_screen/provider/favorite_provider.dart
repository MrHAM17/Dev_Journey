import 'package:flutter/material.dart';
import 'package:the_5_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_5_12_street_style___e_commerce_app/presentation/favorite_screen/models/favorite_model.dart';
import '../models/favorite_item_model.dart';

/// A provider class for the FavoriteScreen.
///
/// This provider manages the state of the FavoriteScreen, including the
/// current favoriteModelObj

// ignore_for_file: must_be_immutable
class FavoriteProvider extends ChangeNotifier {
  FavoriteModel favoriteModelObj = FavoriteModel();

  @override
  void dispose() {
    super.dispose();
  }
}
