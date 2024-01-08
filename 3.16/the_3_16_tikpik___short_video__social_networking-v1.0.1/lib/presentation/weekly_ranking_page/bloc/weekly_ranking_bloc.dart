import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/weeklyranking_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/weekly_ranking_page/models/weekly_ranking_model.dart';
part 'weekly_ranking_event.dart';
part 'weekly_ranking_state.dart';

/// A bloc that manages the state of a WeeklyRanking according to the event that is dispatched to it.
class WeeklyRankingBloc extends Bloc<WeeklyRankingEvent, WeeklyRankingState> {
  WeeklyRankingBloc(WeeklyRankingState initialState) : super(initialState) {
    on<WeeklyRankingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WeeklyRankingInitialEvent event,
    Emitter<WeeklyRankingState> emit,
  ) async {
    emit(state.copyWith(
        weeklyRankingModelObj: state.weeklyRankingModelObj?.copyWith(
      weeklyrankingItemList: fillWeeklyrankingItemList(),
    )));
  }

  List<WeeklyrankingItemModel> fillWeeklyrankingItemList() {
    return [
      WeeklyrankingItemModel(tynishaObey: "Tynisha Obey", distance: "26.37M")
    ];
  }
}
