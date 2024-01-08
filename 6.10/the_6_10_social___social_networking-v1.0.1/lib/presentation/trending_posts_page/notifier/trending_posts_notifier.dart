import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_10_social___social_networking/presentation/trending_posts_page/models/trending_posts_model.dart';
part 'trending_posts_state.dart';

final trendingPostsNotifier =
    StateNotifierProvider<TrendingPostsNotifier, TrendingPostsState>((ref) =>
        TrendingPostsNotifier(
            TrendingPostsState(trendingPostsModelObj: TrendingPostsModel())));

/// A notifier that manages the state of a TrendingPosts according to the event that is dispatched to it.
class TrendingPostsNotifier extends StateNotifier<TrendingPostsState> {
  TrendingPostsNotifier(TrendingPostsState state) : super(state);
}
