import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/seemoreseven_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/see_more_seven_screen/models/see_more_seven_model.dart';
part 'see_more_seven_state.dart';

final seeMoreSevenNotifier =
    StateNotifierProvider<SeeMoreSevenNotifier, SeeMoreSevenState>(
        (ref) => SeeMoreSevenNotifier(SeeMoreSevenState(
            searchController: TextEditingController(),
            seeMoreSevenModelObj: SeeMoreSevenModel(seemoresevenItemList: [
              SeemoresevenItemModel(
                  jallikatta: ImageConstant.imgThumbnailImage20,
                  title: "Jallikatta"),
              SeemoresevenItemModel(
                  jallikatta: ImageConstant.imgThumbnailImage25,
                  title: "The Brave"),
              SeemoresevenItemModel(
                  jallikatta: ImageConstant.imgThumbnailImage26,
                  title: "Helen"),
              SeemoresevenItemModel(
                  jallikatta: ImageConstant.imgThumbnailImage27, title: "A1"),
              SeemoresevenItemModel(
                  jallikatta: ImageConstant.imgThumbnailImage28,
                  title: "Captain Marvel"),
              SeemoresevenItemModel(
                  jallikatta: ImageConstant.imgThumbnailImage24,
                  title: "Child’s Play"),
              SeemoresevenItemModel(
                  jallikatta: ImageConstant.imgThumbnailImage12,
                  title: "Dark Phoenix"),
              SeemoresevenItemModel(
                  jallikatta: ImageConstant.imgThumbnailImage30, title: "Arana")
            ]))));

/// A notifier that manages the state of a SeeMoreSeven according to the event that is dispatched to it.
class SeeMoreSevenNotifier extends StateNotifier<SeeMoreSevenState> {
  SeeMoreSevenNotifier(SeeMoreSevenState state) : super(state);
}
