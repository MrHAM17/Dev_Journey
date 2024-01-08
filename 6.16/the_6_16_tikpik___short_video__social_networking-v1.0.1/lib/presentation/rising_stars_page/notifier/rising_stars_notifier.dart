import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/risingstars_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/rising_stars_page/models/rising_stars_model.dart';
part 'rising_stars_state.dart';

final risingStarsNotifier =
    StateNotifierProvider<RisingStarsNotifier, RisingStarsState>(
  (ref) => RisingStarsNotifier(RisingStarsState(
    risingStarsModelObj: RisingStarsModel(risingstarsItemList: [
      RisingstarsItemModel(
          rochelFoose: ImageConstant.imgEllipse4,
          rochelFoose1: "Rochel Foose",
          distance: "55.65M")
    ]),
  )),
);

/// A notifier that manages the state of a RisingStars according to the event that is dispatched to it.
class RisingStarsNotifier extends StateNotifier<RisingStarsState> {
  RisingStarsNotifier(RisingStarsState state) : super(state) {}
}
