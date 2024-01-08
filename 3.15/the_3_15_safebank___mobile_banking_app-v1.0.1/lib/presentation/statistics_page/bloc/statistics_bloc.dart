import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/statistics_page/models/statistics_model.dart';
part 'statistics_event.dart';
part 'statistics_state.dart';

/// A bloc that manages the state of a Statistics according to the event that is dispatched to it.
class StatisticsBloc extends Bloc<StatisticsEvent, StatisticsState> {
  StatisticsBloc(StatisticsState initialState) : super(initialState) {
    on<StatisticsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StatisticsInitialEvent event,
    Emitter<StatisticsState> emit,
  ) async {}
}