import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/suggested_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/suggested_page/models/suggested_model.dart';
part 'suggested_event.dart';
part 'suggested_state.dart';

/// A bloc that manages the state of a Suggested according to the event that is dispatched to it.
class SuggestedBloc extends Bloc<SuggestedEvent, SuggestedState> {
  SuggestedBloc(SuggestedState initialState) : super(initialState) {
    on<SuggestedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SuggestedInitialEvent event,
    Emitter<SuggestedState> emit,
  ) async {
    emit(state.copyWith(
        suggestedModelObj: state.suggestedModelObj?.copyWith(
      suggestedItemList: fillSuggestedItemList(),
    )));
  }

  List<SuggestedItemModel> fillSuggestedItemList() {
    return [
      SuggestedItemModel(
          rayfordChenail: ImageConstant.imgEllipse3,
          rayfordChenail1: "Rayford Chenail",
          price: "rayfordchenail | 42.9K")
    ];
  }
}
