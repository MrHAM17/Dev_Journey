import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/intrestrow1_item_model.dart';
import 'package:the_6_05_blog_app/presentation/interests_screen/models/interests_model.dart';
part 'interests_state.dart';

final interestsNotifier =
    StateNotifierProvider<InterestsNotifier, InterestsState>(
  (ref) => InterestsNotifier(InterestsState(
    interestsModelObj: InterestsModel(
        intrestrow1ItemList:
            List.generate(27, (index) => Intrestrow1ItemModel())),
  )),
);

/// A notifier that manages the state of a Interests according to the event that is dispatched to it.
class InterestsNotifier extends StateNotifier<InterestsState> {
  InterestsNotifier(InterestsState state) : super(state) {}

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<Intrestrow1ItemModel> newList = List<Intrestrow1ItemModel>.from(
        state.interestsModelObj!.intrestrow1ItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        interestsModelObj:
            state.interestsModelObj?.copyWith(intrestrow1ItemList: newList));
  }
}
