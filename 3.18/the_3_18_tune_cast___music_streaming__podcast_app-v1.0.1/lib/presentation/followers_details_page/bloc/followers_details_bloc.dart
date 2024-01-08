import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/ninetyfive_item_model.dart';
import '../models/following1_item_model.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/presentation/followers_details_page/models/followers_details_model.dart';
part 'followers_details_event.dart';
part 'followers_details_state.dart';

/// A bloc that manages the state of a FollowersDetails according to the event that is dispatched to it.
class FollowersDetailsBloc
    extends Bloc<FollowersDetailsEvent, FollowersDetailsState> {
  FollowersDetailsBloc(FollowersDetailsState initialState)
      : super(initialState) {
    on<FollowersDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FollowersDetailsInitialEvent event,
    Emitter<FollowersDetailsState> emit,
  ) async {
    emit(state.copyWith(
        followersDetailsModelObj: state.followersDetailsModelObj?.copyWith(
      ninetyfiveItemList: fillNinetyfiveItemList(),
      following1ItemList: fillFollowing1ItemList(),
    )));
  }

  List<NinetyfiveItemModel> fillNinetyfiveItemList() {
    return [
      NinetyfiveItemModel(
          jennyWilson: ImageConstant.imgImage78,
          artistName: "Jenny Wilson",
          followersCounter: "9,489 Followers"),
      NinetyfiveItemModel(
          jennyWilson: ImageConstant.imgImage79,
          artistName: "Jenny Foose",
          followersCounter: "8,811 Followers")
    ];
  }

  List<Following1ItemModel> fillFollowing1ItemList() {
    return List.generate(1, (index) => Following1ItemModel());
  }
}
