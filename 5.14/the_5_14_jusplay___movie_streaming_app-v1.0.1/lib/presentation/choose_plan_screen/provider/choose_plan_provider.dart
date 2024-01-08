import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/choose_plan_screen/models/choose_plan_model.dart';
import '../models/chooseplan_item_model.dart';
import 'package:flutter/material.dart';

/// A provider class for the ChoosePlanScreen.
///
/// This provider manages the state of the ChoosePlanScreen, including the
/// current choosePlanModelObj

// ignore_for_file: must_be_immutable
class ChoosePlanProvider extends ChangeNotifier {
  ChoosePlanModel choosePlanModelObj = ChoosePlanModel();

  @override
  void dispose() {
    super.dispose();
  }
}
