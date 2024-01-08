import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/autolayouthorizontal1_item_model.dart';
import '../models/autolayouthorizontal2_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/trending_sounds_page/models/trending_sounds_model.dart';
part 'trending_sounds_event.dart';
part 'trending_sounds_state.dart';

/// A bloc that manages the state of a TrendingSounds according to the event that is dispatched to it.
class TrendingSoundsBloc
    extends Bloc<TrendingSoundsEvent, TrendingSoundsState> {
  TrendingSoundsBloc(TrendingSoundsState initialState) : super(initialState) {
    on<TrendingSoundsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrendingSoundsInitialEvent event,
    Emitter<TrendingSoundsState> emit,
  ) async {
    emit(state.copyWith(
        trendingSoundsModelObj: state.trendingSoundsModelObj?.copyWith(
      autolayouthorizontal1ItemList: fillAutolayouthorizontal1ItemList(),
      autolayouthorizontal2ItemList: fillAutolayouthorizontal2ItemList(),
    )));
  }

  List<Autolayouthorizontal1ItemModel> fillAutolayouthorizontal1ItemList() {
    return [
      Autolayouthorizontal1ItemModel(k: ImageConstant.imgImage19, k1: "728.5K"),
      Autolayouthorizontal1ItemModel(k: ImageConstant.imgImage20, k1: "837.9K"),
      Autolayouthorizontal1ItemModel(k: ImageConstant.imgImage21, k1: "736.2K")
    ];
  }

  List<Autolayouthorizontal2ItemModel> fillAutolayouthorizontal2ItemList() {
    return [
      Autolayouthorizontal2ItemModel(
          k: ImageConstant.imgImage22,
          k1: ImageConstant.imgOverflowmenuPrimary,
          k2: "728.5K"),
      Autolayouthorizontal2ItemModel(k: ImageConstant.imgImage23, k2: "837.9K"),
      Autolayouthorizontal2ItemModel(
          k: ImageConstant.imgImage24,
          k1: ImageConstant.imgOverflowmenuPrimary,
          k2: "736.2K")
    ];
  }
}
