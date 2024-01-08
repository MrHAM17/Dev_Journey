import 'package:flutter/material.dart';
import 'package:the_5_03_todo/core/app_export.dart';
import 'package:the_5_03_todo/presentation/wish_list_screen/models/wish_list_model.dart';

/// A provider class for the WishListScreen.
///
/// This provider manages the state of the WishListScreen, including the
/// current wishListModelObj

// ignore_for_file: must_be_immutable
class WishListProvider extends ChangeNotifier {
  TextEditingController filesizeController = TextEditingController();

  WishListModel wishListModelObj = WishListModel();

  @override
  void dispose() {
    super.dispose();
    filesizeController.dispose();
  }
}
