import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/go_live_together_bottomsheet/models/go_live_together_model.dart';import '../models/golivetogether_item_model.dart';/// A provider class for the GoLiveTogetherBottomsheet.
///
/// This provider manages the state of the GoLiveTogetherBottomsheet, including the
/// current goLiveTogetherModelObj

// ignore_for_file: must_be_immutable
class GoLiveTogetherProvider extends ChangeNotifier {GoLiveTogetherModel goLiveTogetherModelObj = GoLiveTogetherModel();

@override void dispose() { super.dispose(); } 
 }
