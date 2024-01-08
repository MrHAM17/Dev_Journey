import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/weeklyranking_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/weekly_ranking_page/models/weekly_ranking_model.dart';
part 'weekly_ranking_state.dart';

final weeklyRankingNotifier =
    StateNotifierProvider<WeeklyRankingNotifier, WeeklyRankingState>(
  (ref) => WeeklyRankingNotifier(WeeklyRankingState(
    weeklyRankingModelObj: WeeklyRankingModel(weeklyrankingItemList: [
      WeeklyrankingItemModel(tynishaObey: "Tynisha Obey", distance: "26.37M")
    ]),
  )),
);

/// A notifier that manages the state of a WeeklyRanking according to the event that is dispatched to it.
class WeeklyRankingNotifier extends StateNotifier<WeeklyRankingState> {
  WeeklyRankingNotifier(WeeklyRankingState state) : super(state) {}
}
