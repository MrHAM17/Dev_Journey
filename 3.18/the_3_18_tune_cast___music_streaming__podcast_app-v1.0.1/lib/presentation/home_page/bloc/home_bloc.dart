import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/trendingnow_item_model.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/presentation/home_page/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
      trendingnowItemList: fillTrendingnowItemList(),
    )));
  }

  List<TrendingnowItemModel> fillTrendingnowItemList() {
    return [
      TrendingnowItemModel(groupBy: "Trending Now"),
      TrendingnowItemModel(groupBy: "Trending Now"),
      TrendingnowItemModel(groupBy: "Trending Now"),
      TrendingnowItemModel(groupBy: "Popular Artists"),
      TrendingnowItemModel(groupBy: "Popular Artists"),
      TrendingnowItemModel(groupBy: "Popular Artists"),
      TrendingnowItemModel(groupBy: "Top Charts"),
      TrendingnowItemModel(groupBy: "Top Charts"),
      TrendingnowItemModel(groupBy: "Top Charts")
    ];
  }
}
