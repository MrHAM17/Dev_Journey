import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/suggested_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/suggested_page/models/suggested_model.dart';
part 'suggested_state.dart';

final suggestedNotifier =
    StateNotifierProvider<SuggestedNotifier, SuggestedState>(
  (ref) => SuggestedNotifier(SuggestedState(
    suggestedModelObj: SuggestedModel(suggestedItemList: [
      SuggestedItemModel(
          rayfordChenail: ImageConstant.imgEllipse3,
          rayfordChenail1: "Rayford Chenail",
          price: "rayfordchenail | 42.9K")
    ]),
  )),
);

/// A notifier that manages the state of a Suggested according to the event that is dispatched to it.
class SuggestedNotifier extends StateNotifier<SuggestedState> {
  SuggestedNotifier(SuggestedState state) : super(state) {}
}
