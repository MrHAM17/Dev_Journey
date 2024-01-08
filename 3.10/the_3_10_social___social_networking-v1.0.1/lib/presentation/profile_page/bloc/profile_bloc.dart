import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profile_item_model.dart';
import 'package:the_3_10_social___social_networking/presentation/profile_page/models/profile_model.dart';
part 'profile_event.dart';
part 'profile_state.dart';

/// A bloc that manages the state of a Profile according to the event that is dispatched to it.
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(ProfileState initialState) : super(initialState) {
    on<ProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileInitialEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(
        profileModelObj: state.profileModelObj
            ?.copyWith(profileItemList: fillProfileItemList())));
  }

  List<ProfileItemModel> fillProfileItemList() {
    return [
      ProfileItemModel(
          rosalia: "Rosalia",
          duration: "35 minutes ago",
          mostPeopleNever:
              "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ",
          zipcode: "2200",
          eightHundred: "800")
    ];
  }
}
