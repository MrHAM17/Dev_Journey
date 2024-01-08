import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/trending_sounds_tab_container_page/models/trending_sounds_tab_container_model.dart';
part 'trending_sounds_tab_container_event.dart';
part 'trending_sounds_tab_container_state.dart';

/// A bloc that manages the state of a TrendingSoundsTabContainer according to the event that is dispatched to it.
class TrendingSoundsTabContainerBloc extends Bloc<
    TrendingSoundsTabContainerEvent, TrendingSoundsTabContainerState> {
  TrendingSoundsTabContainerBloc(TrendingSoundsTabContainerState initialState)
      : super(initialState) {
    on<TrendingSoundsTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrendingSoundsTabContainerInitialEvent event,
    Emitter<TrendingSoundsTabContainerState> emit,
  ) async {}
}
