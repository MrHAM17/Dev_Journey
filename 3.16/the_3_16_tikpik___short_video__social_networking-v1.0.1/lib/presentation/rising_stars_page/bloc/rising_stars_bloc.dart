import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/risingstars_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/rising_stars_page/models/rising_stars_model.dart';
part 'rising_stars_event.dart';
part 'rising_stars_state.dart';

/// A bloc that manages the state of a RisingStars according to the event that is dispatched to it.
class RisingStarsBloc extends Bloc<RisingStarsEvent, RisingStarsState> {
  RisingStarsBloc(RisingStarsState initialState) : super(initialState) {
    on<RisingStarsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RisingStarsInitialEvent event,
    Emitter<RisingStarsState> emit,
  ) async {
    emit(state.copyWith(
        risingStarsModelObj: state.risingStarsModelObj?.copyWith(
      risingstarsItemList: fillRisingstarsItemList(),
    )));
  }

  List<RisingstarsItemModel> fillRisingstarsItemList() {
    return [
      RisingstarsItemModel(
          rochelFoose: ImageConstant.imgEllipse4,
          rochelFoose1: "Rochel Foose",
          distance: "55.65M")
    ];
  }
}
