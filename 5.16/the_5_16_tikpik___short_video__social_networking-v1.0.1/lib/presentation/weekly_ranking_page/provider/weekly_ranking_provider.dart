import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/weekly_ranking_page/models/weekly_ranking_model.dart';import '../models/weeklyranking_item_model.dart';/// A provider class for the WeeklyRankingPage.
///
/// This provider manages the state of the WeeklyRankingPage, including the
/// current weeklyRankingModelObj

// ignore_for_file: must_be_immutable
class WeeklyRankingProvider extends ChangeNotifier {WeeklyRankingModel weeklyRankingModelObj = WeeklyRankingModel();

@override void dispose() { super.dispose(); } 
 }
