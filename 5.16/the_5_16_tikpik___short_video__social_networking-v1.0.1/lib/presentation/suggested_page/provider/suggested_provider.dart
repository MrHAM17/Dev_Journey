import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/suggested_page/models/suggested_model.dart';import '../models/suggested_item_model.dart';/// A provider class for the SuggestedPage.
///
/// This provider manages the state of the SuggestedPage, including the
/// current suggestedModelObj

// ignore_for_file: must_be_immutable
class SuggestedProvider extends ChangeNotifier {SuggestedModel suggestedModelObj = SuggestedModel();

@override void dispose() { super.dispose(); } 
 }
