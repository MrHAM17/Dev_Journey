import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_10_social___social_networking/presentation/trending_posts_tab_container_screen/models/trending_posts_tab_container_model.dart';
part 'trending_posts_tab_container_state.dart';

final trendingPostsTabContainerNotifier = StateNotifierProvider<
    TrendingPostsTabContainerNotifier, TrendingPostsTabContainerState>(
  (ref) => TrendingPostsTabContainerNotifier(TrendingPostsTabContainerState(
    searchController: TextEditingController(),
    trendingPostsTabContainerModelObj: TrendingPostsTabContainerModel(),
  )),
);

/// A notifier that manages the state of a TrendingPostsTabContainer according to the event that is dispatched to it.
class TrendingPostsTabContainerNotifier
    extends StateNotifier<TrendingPostsTabContainerState> {
  TrendingPostsTabContainerNotifier(TrendingPostsTabContainerState state)
      : super(state) {}
}
