import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/trending_now_screen/models/trending_now_model.dart';import '../models/trendingnow2_item_model.dart';/// A provider class for the TrendingNowScreen.
///
/// This provider manages the state of the TrendingNowScreen, including the
/// current trendingNowModelObj

// ignore_for_file: must_be_immutable
class TrendingNowProvider extends ChangeNotifier {TrendingNowModel trendingNowModelObj = TrendingNowModel();

@override void dispose() { super.dispose(); } 
 }
