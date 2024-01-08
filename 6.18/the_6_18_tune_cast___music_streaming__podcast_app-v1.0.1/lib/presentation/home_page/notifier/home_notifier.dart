import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/trendingnow_item_model.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/home_page/models/home_model.dart';
part 'home_state.dart';

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(HomeState(
    homeModelObj: HomeModel(trendingnowItemList: [
      TrendingnowItemModel(groupBy: "Trending Now"),
      TrendingnowItemModel(groupBy: "Trending Now"),
      TrendingnowItemModel(groupBy: "Trending Now"),
      TrendingnowItemModel(groupBy: "Popular Artists"),
      TrendingnowItemModel(groupBy: "Popular Artists"),
      TrendingnowItemModel(groupBy: "Popular Artists"),
      TrendingnowItemModel(groupBy: "Top Charts"),
      TrendingnowItemModel(groupBy: "Top Charts"),
      TrendingnowItemModel(groupBy: "Top Charts")
    ]),
  )),
);

/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(HomeState state) : super(state) {}
}
