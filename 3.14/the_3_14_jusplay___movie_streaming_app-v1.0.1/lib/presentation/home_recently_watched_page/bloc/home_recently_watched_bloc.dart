import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget1_item_model.dart';
import '../models/frame1_item_model.dart';
import '../models/frame2_item_model.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/home_recently_watched_page/models/home_recently_watched_model.dart';
part 'home_recently_watched_event.dart';
part 'home_recently_watched_state.dart';

/// A bloc that manages the state of a HomeRecentlyWatched according to the event that is dispatched to it.
class HomeRecentlyWatchedBloc
    extends Bloc<HomeRecentlyWatchedEvent, HomeRecentlyWatchedState> {
  HomeRecentlyWatchedBloc(HomeRecentlyWatchedState initialState)
      : super(initialState) {
    on<HomeRecentlyWatchedInitialEvent>(_onInitialize);
  }

  List<Widget1ItemModel> fillWidget1ItemList() {
    return List.generate(1, (index) => Widget1ItemModel());
  }

  List<Frame1ItemModel> fillFrame1ItemList() {
    return [
      Frame1ItemModel(
          image: ImageConstant.imgRectangle6,
          doctorStrange: "Doctor strange :  In The Multiverse of Madness",
          fifteenThousandThirtyFive: "1:50:35",
          zipcode: "2021",
          lightBulb: ImageConstant.imgRectangle9),
      Frame1ItemModel(
          image: ImageConstant.imgRectangle686x214,
          doctorStrange: "Thor: Ragnarok",
          fifteenThousandThirtyFive: "1:50:35",
          zipcode: "2021")
    ];
  }

  List<Frame2ItemModel> fillFrame2ItemList() {
    return [
      Frame2ItemModel(aladdin: ImageConstant.imgAladdin),
      Frame2ItemModel(aladdin: ImageConstant.imgAladdin178x124),
      Frame2ItemModel(aladdin: ImageConstant.imgAladdin1)
    ];
  }

  _onInitialize(
    HomeRecentlyWatchedInitialEvent event,
    Emitter<HomeRecentlyWatchedState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        homeRecentlyWatchedModelObj:
            state.homeRecentlyWatchedModelObj?.copyWith(
      widget1ItemList: fillWidget1ItemList(),
      frame1ItemList: fillFrame1ItemList(),
      frame2ItemList: fillFrame2ItemList(),
    )));
  }
}
