import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_5_17_housit___buyrentsell_property/presentation/favourite_empty_screen/models/favourite_empty_model.dart';

/// A provider class for the FavouriteEmptyScreen.
///
/// This provider manages the state of the FavouriteEmptyScreen, including the
/// current favouriteEmptyModelObj
class FavouriteEmptyProvider extends ChangeNotifier {
  FavouriteEmptyModel favouriteEmptyModelObj = FavouriteEmptyModel();

  @override
  void dispose() {
    super.dispose();
  }
}
