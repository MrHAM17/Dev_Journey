import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/frame_item_model.dart';
import '../models/aladdin_item_model.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/home_page/models/home_model.dart';
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
            frameItemList: fillFrameItemList(),
            aladdinItemList: fillAladdinItemList())));
    NavigatorService.pushNamed(
      AppRoutes.profilePage,
    ); // TODO: implement Actions
    NavigatorService.pushNamed(
      AppRoutes.savedPage,
    );
    NavigatorService.pushNamed(
      AppRoutes.searchPage,
    ); // TODO: implement Actions
  }

  List<FrameItemModel> fillFrameItemList() {
    return [
      FrameItemModel(aladdin: ImageConstant.imgAladdin),
      FrameItemModel(aladdin: ImageConstant.imgAladdin178x124),
      FrameItemModel(aladdin: ImageConstant.imgAladdin1)
    ];
  }

  List<AladdinItemModel> fillAladdinItemList() {
    return [
      AladdinItemModel(aladdin: ImageConstant.imgAladdin2),
      AladdinItemModel(aladdin: ImageConstant.imgAladdin3),
      AladdinItemModel(aladdin: ImageConstant.imgAladdin4)
    ];
  }
}
