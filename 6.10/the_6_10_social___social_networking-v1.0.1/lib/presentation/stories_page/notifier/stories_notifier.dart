import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/stories1_item_model.dart';
import '../models/frame_item_model.dart';
import 'package:the_6_10_social___social_networking/presentation/stories_page/models/stories_model.dart';
part 'stories_state.dart';

final storiesNotifier = StateNotifierProvider<StoriesNotifier, StoriesState>(
  (ref) => StoriesNotifier(StoriesState(
    searchController: TextEditingController(),
    storiesModelObj: StoriesModel(stories1ItemList: [
      Stories1ItemModel(roy: ImageConstant.imgEllipse15, roy1: "Roy"),
      Stories1ItemModel(roy: ImageConstant.imgEllipse22, roy1: "Jordan"),
      Stories1ItemModel(roy: ImageConstant.imgEllipse26, roy1: "Chrystin"),
      Stories1ItemModel(roy: ImageConstant.imgEllipse28, roy1: "Vrindha"),
      Stories1ItemModel(roy1: "Angeline")
    ], frameItemList: [
      FrameItemModel(
          lIVEWeTheFest: ImageConstant.img19144x147,
          blueLoyalParty: ImageConstant.img192,
          lIVEWeTheFest1: "LIVE - We The Fest",
          price: "19 : 00 | Forg Stadium",
          blueLoyalParty1: "Blue Loyal Party",
          price1: "19 : 35 | Latuna Beach")
    ]),
  )),
);

/// A notifier that manages the state of a Stories according to the event that is dispatched to it.
class StoriesNotifier extends StateNotifier<StoriesState> {
  StoriesNotifier(StoriesState state) : super(state) {}
}
