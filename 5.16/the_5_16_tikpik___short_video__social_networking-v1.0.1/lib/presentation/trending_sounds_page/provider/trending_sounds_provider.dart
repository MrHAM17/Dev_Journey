import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/trending_sounds_page/models/trending_sounds_model.dart';import '../models/autolayouthorizontal1_item_model.dart';import '../models/autolayouthorizontal2_item_model.dart';/// A provider class for the TrendingSoundsPage.
///
/// This provider manages the state of the TrendingSoundsPage, including the
/// current trendingSoundsModelObj

// ignore_for_file: must_be_immutable
class TrendingSoundsProvider extends ChangeNotifier {TrendingSoundsModel trendingSoundsModelObj = TrendingSoundsModel();

@override void dispose() { super.dispose(); } 
 }
