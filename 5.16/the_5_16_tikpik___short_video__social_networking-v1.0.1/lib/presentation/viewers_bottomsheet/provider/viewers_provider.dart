import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/viewers_bottomsheet/models/viewers_model.dart';import '../models/viewers_item_model.dart';/// A provider class for the ViewersBottomsheet.
///
/// This provider manages the state of the ViewersBottomsheet, including the
/// current viewersModelObj

// ignore_for_file: must_be_immutable
class ViewersProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

ViewersModel viewersModelObj = ViewersModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
