import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/go_live_screen/models/go_live_model.dart';/// A provider class for the GoLiveScreen.
///
/// This provider manages the state of the GoLiveScreen, including the
/// current goLiveModelObj

// ignore_for_file: must_be_immutable
class GoLiveProvider extends ChangeNotifier {GoLiveModel goLiveModelObj = GoLiveModel();

@override void dispose() { super.dispose(); } 
 }
