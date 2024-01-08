import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/similiar_item_model.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/similiar_page/models/similiar_model.dart';
part 'similiar_event.dart';
part 'similiar_state.dart';

/// A bloc that manages the state of a Similiar according to the event that is dispatched to it.
class SimiliarBloc extends Bloc<SimiliarEvent, SimiliarState> {
  SimiliarBloc(SimiliarState initialState) : super(initialState) {
    on<SimiliarInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SimiliarInitialEvent event,
    Emitter<SimiliarState> emit,
  ) async {
    emit(state.copyWith(
        similiarModelObj: state.similiarModelObj
            ?.copyWith(similiarItemList: fillSimiliarItemList())));
  }

  List<SimiliarItemModel> fillSimiliarItemList() {
    return [
      SimiliarItemModel(
          image: ImageConstant.imgRectangle12078,
          image1: ImageConstant.imgRectangle12078140x102,
          image2: ImageConstant.imgRectangle120781)
    ];
  }
}
