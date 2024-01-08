import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chooseplan_item_model.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/choose_plan_screen/models/choose_plan_model.dart';
part 'choose_plan_state.dart';

final choosePlanNotifier =
    StateNotifierProvider<ChoosePlanNotifier, ChoosePlanState>((ref) =>
        ChoosePlanNotifier(ChoosePlanState(
            choosePlanModelObj: ChoosePlanModel(chooseplanItemList: [
          ChooseplanItemModel(voucher: "Voucher")
        ]))));

/// A notifier that manages the state of a ChoosePlan according to the event that is dispatched to it.
class ChoosePlanNotifier extends StateNotifier<ChoosePlanState> {
  ChoosePlanNotifier(ChoosePlanState state) : super(state);
}
