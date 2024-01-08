import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/presentation/choose_plan_screen/models/choose_plan_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChoosePlanScreen.
///
/// This class manages the state of the ChoosePlanScreen, including the
/// current choosePlanModelObj
class ChoosePlanController extends GetxController {
  Rx<ChoosePlanModel> choosePlanModelObj = ChoosePlanModel().obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.paymentMethodScreen,
    );
  }
}
