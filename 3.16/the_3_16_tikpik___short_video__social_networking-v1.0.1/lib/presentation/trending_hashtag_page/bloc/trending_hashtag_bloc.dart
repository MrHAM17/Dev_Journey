import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/autolayouthorizontal3_item_model.dart';
import '../models/autolayouthorizontal4_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/trending_hashtag_page/models/trending_hashtag_model.dart';
part 'trending_hashtag_event.dart';
part 'trending_hashtag_state.dart';

/// A bloc that manages the state of a TrendingHashtag according to the event that is dispatched to it.
class TrendingHashtagBloc
    extends Bloc<TrendingHashtagEvent, TrendingHashtagState> {
  TrendingHashtagBloc(TrendingHashtagState initialState) : super(initialState) {
    on<TrendingHashtagInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrendingHashtagInitialEvent event,
    Emitter<TrendingHashtagState> emit,
  ) async {
    emit(state.copyWith(
        trendingHashtagModelObj: state.trendingHashtagModelObj?.copyWith(
      autolayouthorizontal3ItemList: fillAutolayouthorizontal3ItemList(),
      autolayouthorizontal4ItemList: fillAutolayouthorizontal4ItemList(),
    )));
  }

  List<Autolayouthorizontal3ItemModel> fillAutolayouthorizontal3ItemList() {
    return [
      Autolayouthorizontal3ItemModel(
          k: ImageConstant.imgImage31,
          overflowMenu: ImageConstant.imgOverflowMenuPrimary16x16,
          k1: "728.5K"),
      Autolayouthorizontal3ItemModel(k: ImageConstant.imgImage32, k1: "837.9K"),
      Autolayouthorizontal3ItemModel(k: ImageConstant.imgImage33, k1: "736.2K")
    ];
  }

  List<Autolayouthorizontal4ItemModel> fillAutolayouthorizontal4ItemList() {
    return [
      Autolayouthorizontal4ItemModel(
          k: ImageConstant.imgImage19,
          k1: ImageConstant.imgOverflowmenuPrimary,
          k2: "728.5K"),
      Autolayouthorizontal4ItemModel(k: ImageConstant.imgImage20, k2: "837.9K"),
      Autolayouthorizontal4ItemModel(k: ImageConstant.imgImage21, k2: "736.2K")
    ];
  }
}
