import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chooseplan_item_model.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/choose_plan_screen/models/choose_plan_model.dart';
part 'choose_plan_event.dart';
part 'choose_plan_state.dart';

/// A bloc that manages the state of a ChoosePlan according to the event that is dispatched to it.
class ChoosePlanBloc extends Bloc<ChoosePlanEvent, ChoosePlanState> {
  ChoosePlanBloc(ChoosePlanState initialState) : super(initialState) {
    on<ChoosePlanInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChoosePlanInitialEvent event,
    Emitter<ChoosePlanState> emit,
  ) async {
    emit(state.copyWith(
        choosePlanModelObj: state.choosePlanModelObj
            ?.copyWith(chooseplanItemList: fillChooseplanItemList())));
    NavigatorService.pushNamed(
      AppRoutes.paymentMethodScreen,
    );
  }

  List<ChooseplanItemModel> fillChooseplanItemList() {
    return [ChooseplanItemModel(voucher: "Voucher")];
  }
}
