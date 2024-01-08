import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/trending_hashtag_page/models/trending_hashtag_model.dart';import '../models/autolayouthorizontal3_item_model.dart';import '../models/autolayouthorizontal4_item_model.dart';/// A provider class for the TrendingHashtagPage.
///
/// This provider manages the state of the TrendingHashtagPage, including the
/// current trendingHashtagModelObj

// ignore_for_file: must_be_immutable
class TrendingHashtagProvider extends ChangeNotifier {TrendingHashtagModel trendingHashtagModelObj = TrendingHashtagModel();

@override void dispose() { super.dispose(); } 
 }
