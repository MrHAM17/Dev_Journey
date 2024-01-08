import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewers_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/viewers_bottomsheet/models/viewers_model.dart';
part 'viewers_state.dart';

final viewersNotifier = StateNotifierProvider<ViewersNotifier, ViewersState>(
  (ref) => ViewersNotifier(ViewersState(
    searchController: TextEditingController(),
    viewersModelObj: ViewersModel(viewersItemList: [
      ViewersItemModel(darylNehls: "Daryl Nehls"),
      ViewersItemModel(darylNehls: "Daryl Nehls")
    ]),
  )),
);

/// A notifier that manages the state of a Viewers according to the event that is dispatched to it.
class ViewersNotifier extends StateNotifier<ViewersState> {
  ViewersNotifier(ViewersState state) : super(state) {}
}
