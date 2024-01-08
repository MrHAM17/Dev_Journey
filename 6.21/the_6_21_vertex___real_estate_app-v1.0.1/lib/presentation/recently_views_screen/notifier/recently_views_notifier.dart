import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/recently_views_screen/models/recently_views_model.dart';part 'recently_views_state.dart';final recentlyViewsNotifier = StateNotifierProvider<RecentlyViewsNotifier, RecentlyViewsState>((ref) => RecentlyViewsNotifier(RecentlyViewsState(recentlyViewsModelObj: RecentlyViewsModel())));
/// A notifier that manages the state of a RecentlyViews according to the event that is dispatched to it.
class RecentlyViewsNotifier extends StateNotifier<RecentlyViewsState> {RecentlyViewsNotifier(RecentlyViewsState state) : super(state);

 }
