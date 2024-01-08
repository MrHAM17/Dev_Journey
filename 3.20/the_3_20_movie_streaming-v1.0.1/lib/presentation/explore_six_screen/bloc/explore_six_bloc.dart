import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/exploresix_item_model.dart';
import 'package:the_3_20_movie_streaming/presentation/explore_six_screen/models/explore_six_model.dart';
part 'explore_six_event.dart';
part 'explore_six_state.dart';

/// A bloc that manages the state of a ExploreSix according to the event that is dispatched to it.
class ExploreSixBloc extends Bloc<ExploreSixEvent, ExploreSixState> {
  ExploreSixBloc(ExploreSixState initialState) : super(initialState) {
    on<ExploreSixInitialEvent>(_onInitialize);
  }

  List<ExploresixItemModel> fillExploresixItemList() {
    return [
      ExploresixItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage1,
          title: "Turner & Hooch",
          title1: "Sub-Title"),
      ExploresixItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage26,
          title: "Hellen",
          title1: "What a happy Family"),
      ExploresixItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage24,
          title: "Child’s Play",
          title1: "Sub-Title"),
      ExploresixItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage20,
          title: "Jallikattu",
          title1: "Lijo Jose Pelliserys on Earth"),
      ExploresixItemModel(
          title: "Yesterday ", title1: "Everyone in the world has forgotten"),
      ExploresixItemModel(title: "More")
    ];
  }

  _onInitialize(
    ExploreSixInitialEvent event,
    Emitter<ExploreSixState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        exploreSixModelObj: state.exploreSixModelObj
            ?.copyWith(exploresixItemList: fillExploresixItemList())));
  }
}
