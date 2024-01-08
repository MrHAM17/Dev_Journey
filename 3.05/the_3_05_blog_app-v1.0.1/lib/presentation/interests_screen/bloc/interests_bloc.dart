import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/intrestrow1_item_model.dart';
import 'package:the_3_05_blog_app/presentation/interests_screen/models/interests_model.dart';
part 'interests_event.dart';
part 'interests_state.dart';

/// A bloc that manages the state of a Interests according to the event that is dispatched to it.
class InterestsBloc extends Bloc<InterestsEvent, InterestsState> {
  InterestsBloc(InterestsState initialState) : super(initialState) {
    on<InterestsInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    InterestsInitialEvent event,
    Emitter<InterestsState> emit,
  ) async {
    emit(state.copyWith(
        interestsModelObj: state.interestsModelObj?.copyWith(
      intrestrow1ItemList: fillIntrestrow1ItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<InterestsState> emit,
  ) {
    List<Intrestrow1ItemModel> newList = List<Intrestrow1ItemModel>.from(
        state.interestsModelObj!.intrestrow1ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        interestsModelObj:
            state.interestsModelObj?.copyWith(intrestrow1ItemList: newList)));
  }

  List<Intrestrow1ItemModel> fillIntrestrow1ItemList() {
    return List.generate(27, (index) => Intrestrow1ItemModel());
  }
}
