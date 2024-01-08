import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/see_more_seven_screen/models/see_more_seven_model.dart';
import '../models/seemoreseven_item_model.dart';

/// A provider class for the SeeMoreSevenScreen.
///
/// This provider manages the state of the SeeMoreSevenScreen, including the
/// current seeMoreSevenModelObj

// ignore_for_file: must_be_immutable
class SeeMoreSevenProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SeeMoreSevenModel seeMoreSevenModelObj = SeeMoreSevenModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
