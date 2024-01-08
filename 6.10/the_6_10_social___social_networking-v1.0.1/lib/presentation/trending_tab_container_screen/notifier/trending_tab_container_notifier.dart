import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/stories_item_model.dart';
import 'package:the_6_10_social___social_networking/presentation/trending_tab_container_screen/models/trending_tab_container_model.dart';
part 'trending_tab_container_state.dart';

final trendingTabContainerNotifier = StateNotifierProvider<
        TrendingTabContainerNotifier, TrendingTabContainerState>(
    (ref) => TrendingTabContainerNotifier(TrendingTabContainerState(
        searchController: TextEditingController(),
        trendingTabContainerModelObj:
            TrendingTabContainerModel(storiesItemList: [
          StoriesItemModel(roy: ImageConstant.imgEllipse15, roy1: "Roy"),
          StoriesItemModel(roy: ImageConstant.imgEllipse22, roy1: "Jordan"),
          StoriesItemModel(roy: ImageConstant.imgEllipse26, roy1: "Chrystin"),
          StoriesItemModel(roy: ImageConstant.imgEllipse28, roy1: "Vrindha"),
          StoriesItemModel(roy1: "Angeline")
        ]))));

/// A notifier that manages the state of a TrendingTabContainer according to the event that is dispatched to it.
class TrendingTabContainerNotifier
    extends StateNotifier<TrendingTabContainerState> {
  TrendingTabContainerNotifier(TrendingTabContainerState state) : super(state);
}
