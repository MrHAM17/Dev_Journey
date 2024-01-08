import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/viewers_bottomsheet/models/viewers_model.dart';import 'package:flutter/material.dart';/// A controller class for the ViewersBottomsheet.
///
/// This class manages the state of the ViewersBottomsheet, including the
/// current viewersModelObj
class ViewersController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<ViewersModel> viewersModelObj = ViewersModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
