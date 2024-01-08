import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/frame_item_model.dart';
import '../models/aladdin_item_model.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/home_page/models/home_model.dart';
part 'home_state.dart';

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>(
    (ref) => HomeNotifier(HomeState(
            homeModelObj: HomeModel(frameItemList: [
          FrameItemModel(aladdin: ImageConstant.imgAladdin),
          FrameItemModel(aladdin: ImageConstant.imgAladdin178x124),
          FrameItemModel(aladdin: ImageConstant.imgAladdin1)
        ], aladdinItemList: [
          AladdinItemModel(aladdin: ImageConstant.imgAladdin2),
          AladdinItemModel(aladdin: ImageConstant.imgAladdin3),
          AladdinItemModel(aladdin: ImageConstant.imgAladdin4)
        ]))));

/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(HomeState state) : super(state);
}
