import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewers_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/viewers_bottomsheet/models/viewers_model.dart';
part 'viewers_event.dart';
part 'viewers_state.dart';

/// A bloc that manages the state of a Viewers according to the event that is dispatched to it.
class ViewersBloc extends Bloc<ViewersEvent, ViewersState> {
  ViewersBloc(ViewersState initialState) : super(initialState) {
    on<ViewersInitialEvent>(_onInitialize);
  }

  List<ViewersItemModel> fillViewersItemList() {
    return [
      ViewersItemModel(darylNehls: "Daryl Nehls"),
      ViewersItemModel(darylNehls: "Daryl Nehls")
    ];
  }

  _onInitialize(
    ViewersInitialEvent event,
    Emitter<ViewersState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        viewersModelObj: state.viewersModelObj?.copyWith(
      viewersItemList: fillViewersItemList(),
    )));
  }
}
