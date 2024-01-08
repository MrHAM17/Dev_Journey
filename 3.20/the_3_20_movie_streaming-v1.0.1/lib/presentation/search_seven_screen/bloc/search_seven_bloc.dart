import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchseven_item_model.dart';
import '../models/frameseventynine_item_model.dart';
import 'package:the_3_20_movie_streaming/presentation/search_seven_screen/models/search_seven_model.dart';
part 'search_seven_event.dart';
part 'search_seven_state.dart';

/// A bloc that manages the state of a SearchSeven according to the event that is dispatched to it.
class SearchSevenBloc extends Bloc<SearchSevenEvent, SearchSevenState> {
  SearchSevenBloc(SearchSevenState initialState) : super(initialState) {
    on<SearchSevenInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SearchSevenState> emit,
  ) {
    List<FrameseventynineItemModel> newList =
        List<FrameseventynineItemModel>.from(
            state.searchSevenModelObj!.frameseventynineItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        searchSevenModelObj: state.searchSevenModelObj
            ?.copyWith(frameseventynineItemList: newList)));
  }

  List<SearchsevenItemModel> fillSearchsevenItemList() {
    return [
      SearchsevenItemModel(
          jallikatta: ImageConstant.imgThumbnailImage20, title: "Jallikatta"),
      SearchsevenItemModel(
          jallikatta: ImageConstant.imgThumbnailImage25, title: "The Brave"),
      SearchsevenItemModel(
          jallikatta: ImageConstant.imgThumbnailImage26, title: "Helen"),
      SearchsevenItemModel(
          jallikatta: ImageConstant.imgThumbnailImage27, title: "A1"),
      SearchsevenItemModel(
          jallikatta: ImageConstant.imgThumbnailImage28,
          title: "Captain Marvel"),
      SearchsevenItemModel(
          jallikatta: ImageConstant.imgThumbnailImage24, title: "Child’s Play")
    ];
  }

  List<FrameseventynineItemModel> fillFrameseventynineItemList() {
    return List.generate(4, (index) => FrameseventynineItemModel());
  }

  _onInitialize(
    SearchSevenInitialEvent event,
    Emitter<SearchSevenState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        searchSevenModelObj: state.searchSevenModelObj?.copyWith(
            searchsevenItemList: fillSearchsevenItemList(),
            frameseventynineItemList: fillFrameseventynineItemList())));
  }
}
