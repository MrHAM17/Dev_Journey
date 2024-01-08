import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/exploresix_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/explore_six_screen/models/explore_six_model.dart';
part 'explore_six_state.dart';

final exploreSixNotifier =
    StateNotifierProvider<ExploreSixNotifier, ExploreSixState>(
        (ref) => ExploreSixNotifier(ExploreSixState(
            searchController: TextEditingController(),
            exploreSixModelObj: ExploreSixModel(exploresixItemList: [
              ExploresixItemModel(
                  turnerHooch: ImageConstant.imgThumbnailImage1,
                  title: "Turner & Hooch",
                  title1: "Sub-Title"),
              ExploresixItemModel(
                  turnerHooch: ImageConstant.imgThumbnailImage26,
                  title: "Hellen",
                  title1: "What a happy Family"),
              ExploresixItemModel(
                  turnerHooch: ImageConstant.imgThumbnailImage24,
                  title: "Child’s Play",
                  title1: "Sub-Title"),
              ExploresixItemModel(
                  turnerHooch: ImageConstant.imgThumbnailImage20,
                  title: "Jallikattu",
                  title1: "Lijo Jose Pelliserys on Earth"),
              ExploresixItemModel(
                  title: "Yesterday ",
                  title1: "Everyone in the world has forgotten"),
              ExploresixItemModel(title: "More")
            ]))));

/// A notifier that manages the state of a ExploreSix according to the event that is dispatched to it.
class ExploreSixNotifier extends StateNotifier<ExploreSixState> {
  ExploreSixNotifier(ExploreSixState state) : super(state);
}
