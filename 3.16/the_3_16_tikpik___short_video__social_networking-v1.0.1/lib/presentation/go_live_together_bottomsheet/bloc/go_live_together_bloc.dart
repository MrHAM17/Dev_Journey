import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/golivetogether_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/go_live_together_bottomsheet/models/go_live_together_model.dart';
part 'go_live_together_event.dart';
part 'go_live_together_state.dart';

/// A bloc that manages the state of a GoLiveTogether according to the event that is dispatched to it.
class GoLiveTogetherBloc
    extends Bloc<GoLiveTogetherEvent, GoLiveTogetherState> {
  GoLiveTogetherBloc(GoLiveTogetherState initialState) : super(initialState) {
    on<GoLiveTogetherInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GoLiveTogetherInitialEvent event,
    Emitter<GoLiveTogetherState> emit,
  ) async {
    emit(state.copyWith(
        goLiveTogetherModelObj: state.goLiveTogetherModelObj?.copyWith(
      golivetogetherItemList: fillGolivetogetherItemList(),
    )));
  }

  List<GolivetogetherItemModel> fillGolivetogetherItemList() {
    return [
      GolivetogetherItemModel(
          chantalShelburne: ImageConstant.imgEllipse12,
          chantalShelburne1: "Chantal Shelburne",
          time: "9 min ago"),
      GolivetogetherItemModel(
          chantalShelburne: ImageConstant.imgEllipse14,
          chantalShelburne1: "Krishna Barbe",
          time: "12 min ago"),
      GolivetogetherItemModel(
          chantalShelburne: ImageConstant.imgEllipse7,
          chantalShelburne1: "Sanjuanita Ordonez",
          time: "14 min ago")
    ];
  }
}
