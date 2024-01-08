import 'package:flutter/material.dart';
import 'package:the_5_02_music_player/core/app_export.dart';
import 'package:the_5_02_music_player/presentation/favorites_page/models/favorites_model.dart';
import '../models/favorites_item_model.dart';

/// A provider class for the FavoritesPage.
///
/// This provider manages the state of the FavoritesPage, including the
/// current favoritesModelObj

// ignore_for_file: must_be_immutable
class FavoritesProvider extends ChangeNotifier {
  FavoritesModel favoritesModelObj = FavoritesModel();

  @override
  void dispose() {
    super.dispose();
  }
}
