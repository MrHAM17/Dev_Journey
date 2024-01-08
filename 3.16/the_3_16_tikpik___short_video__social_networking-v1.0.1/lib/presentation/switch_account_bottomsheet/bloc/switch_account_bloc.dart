import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/switchaccount_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/switch_account_bottomsheet/models/switch_account_model.dart';
part 'switch_account_event.dart';
part 'switch_account_state.dart';

/// A bloc that manages the state of a SwitchAccount according to the event that is dispatched to it.
class SwitchAccountBloc extends Bloc<SwitchAccountEvent, SwitchAccountState> {
  SwitchAccountBloc(SwitchAccountState initialState) : super(initialState) {
    on<SwitchAccountInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SwitchAccountInitialEvent event,
    Emitter<SwitchAccountState> emit,
  ) async {
    emit(state.copyWith(
        switchAccountModelObj: state.switchAccountModelObj?.copyWith(
      switchaccountItemList: fillSwitchaccountItemList(),
    )));
  }

  List<SwitchaccountItemModel> fillSwitchaccountItemList() {
    return [
      SwitchaccountItemModel(
          andrewAinsley: ImageConstant.imgEllipse30,
          name: "Andrew Ainsley",
          information: "andrew_aisnley",
          andrewAinsley1: ImageConstant.imgCategoriesCheck)
    ];
  }
}
