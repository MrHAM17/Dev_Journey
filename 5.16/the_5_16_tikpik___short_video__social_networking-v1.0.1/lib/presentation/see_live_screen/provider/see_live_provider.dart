import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/see_live_screen/models/see_live_model.dart';import '../models/seelive_item_model.dart';/// A provider class for the SeeLiveScreen.
///
/// This provider manages the state of the SeeLiveScreen, including the
/// current seeLiveModelObj

// ignore_for_file: must_be_immutable
class SeeLiveProvider extends ChangeNotifier {SeeLiveModel seeLiveModelObj = SeeLiveModel();

@override void dispose() { super.dispose(); } 
 }
