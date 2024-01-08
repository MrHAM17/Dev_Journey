import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/trending_sounds_tab_container_page/models/trending_sounds_tab_container_model.dart';
part 'trending_sounds_tab_container_state.dart';

final trendingSoundsTabContainerNotifier = StateNotifierProvider<
    TrendingSoundsTabContainerNotifier, TrendingSoundsTabContainerState>(
  (ref) => TrendingSoundsTabContainerNotifier(TrendingSoundsTabContainerState(
    trendingSoundsTabContainerModelObj: TrendingSoundsTabContainerModel(),
  )),
);

/// A notifier that manages the state of a TrendingSoundsTabContainer according to the event that is dispatched to it.
class TrendingSoundsTabContainerNotifier
    extends StateNotifier<TrendingSoundsTabContainerState> {
  TrendingSoundsTabContainerNotifier(TrendingSoundsTabContainerState state)
      : super(state) {}
}
