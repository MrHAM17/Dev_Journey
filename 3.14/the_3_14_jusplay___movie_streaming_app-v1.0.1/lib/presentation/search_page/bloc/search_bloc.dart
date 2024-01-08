import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/frame3_item_model.dart';
import '../models/frame5_item_model.dart';
import '../models/frame6_item_model.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/search_page/models/search_model.dart';
part 'search_event.dart';
part 'search_state.dart';

/// A bloc that manages the state of a Search according to the event that is dispatched to it.
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchState initialState) : super(initialState) {
    on<SearchInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SearchState> emit,
  ) {
    List<Frame3ItemModel> newList =
        List<Frame3ItemModel>.from(state.searchModelObj!.frame3ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        searchModelObj:
            state.searchModelObj?.copyWith(frame3ItemList: newList)));
  }

  List<Frame3ItemModel> fillFrame3ItemList() {
    return List.generate(4, (index) => Frame3ItemModel());
  }

  List<Frame5ItemModel> fillFrame5ItemList() {
    return [
      Frame5ItemModel(rectangle: ImageConstant.imgRectangle12078135x98),
      Frame5ItemModel(rectangle: ImageConstant.imgRectangle12079),
      Frame5ItemModel(rectangle: ImageConstant.imgRectangle12080),
      Frame5ItemModel(rectangle: ImageConstant.imgRectangle12081)
    ];
  }

  List<Frame6ItemModel> fillFrame6ItemList() {
    return [
      Frame6ItemModel(rectangle: ImageConstant.imgRectangle12082),
      Frame6ItemModel(rectangle: ImageConstant.imgRectangle12083),
      Frame6ItemModel(rectangle: ImageConstant.imgRectangle12084),
      Frame6ItemModel(rectangle: ImageConstant.imgRectangle12085)
    ];
  }

  _onInitialize(
    SearchInitialEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchModelObj: state.searchModelObj?.copyWith(
      frame3ItemList: fillFrame3ItemList(),
      frame5ItemList: fillFrame5ItemList(),
      frame6ItemList: fillFrame6ItemList(),
    )));
  }
}
