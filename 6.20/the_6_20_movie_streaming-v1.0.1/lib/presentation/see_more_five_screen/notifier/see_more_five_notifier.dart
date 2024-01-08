import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/seemorefive_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/see_more_five_screen/models/see_more_five_model.dart';
part 'see_more_five_state.dart';

final seeMoreFiveNotifier =
    StateNotifierProvider<SeeMoreFiveNotifier, SeeMoreFiveState>(
        (ref) => SeeMoreFiveNotifier(SeeMoreFiveState(
                seeMoreFiveModelObj: SeeMoreFiveModel(seemorefiveItemList: [
              SeemorefiveItemModel(
                  darkTower: ImageConstant.imgThumbnailImage140x98,
                  title: "Dark Tower"),
              SeemorefiveItemModel(
                  darkTower: ImageConstant.imgThumbnailImage17,
                  title: "Beauty and Beast"),
              SeemorefiveItemModel(
                  darkTower: ImageConstant.imgThumbnailImage18,
                  title: "The way Back"),
              SeemorefiveItemModel(
                  darkTower: ImageConstant.imgThumbnailImage,
                  title: "The Perfection"),
              SeemorefiveItemModel(
                  darkTower: ImageConstant.imgThumbnailImage140x90,
                  title: "Radioflash"),
              SeemorefiveItemModel(
                  darkTower: ImageConstant.imgThumbnailImage1,
                  title: "Turner & Hooch"),
              SeemorefiveItemModel(
                  darkTower: ImageConstant.imgThumbnailImage19,
                  title: "Encounter"),
              SeemorefiveItemModel(
                  darkTower: ImageConstant.imgThumbnailImage12,
                  title: "Dark Phoenix"),
              SeemorefiveItemModel(
                  darkTower: ImageConstant.imgThumbnailImage13,
                  title: "Pirates of Caribbean")
            ]))));

/// A notifier that manages the state of a SeeMoreFive according to the event that is dispatched to it.
class SeeMoreFiveNotifier extends StateNotifier<SeeMoreFiveState> {
  SeeMoreFiveNotifier(SeeMoreFiveState state) : super(state);
}
