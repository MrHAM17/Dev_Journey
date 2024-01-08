import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fortyseven_item_model.dart';
import '../models/profile_item_model.dart';
import 'package:the_6_11_hired___job_search/presentation/profile_page/models/profile_model.dart';
part 'profile_state.dart';

final profileNotifier = StateNotifierProvider<ProfileNotifier, ProfileState>(
    (ref) => ProfileNotifier(ProfileState(
            profileModelObj: ProfileModel(
                fortysevenItemList:
                    List.generate(8, (index) => FortysevenItemModel()),
                profileItemList: [
              ProfileItemModel(
                  image: ImageConstant.imgLogoDeepOrange700,
                  bag: ImageConstant.imgBag,
                  internshipUIUX: "Internship UI/UX Designer",
                  smallLabelRegular: "Shopee Sg",
                  smallLabelRegular1: "•",
                  zipcode: "2019")
            ]))));

/// A notifier that manages the state of a Profile according to the event that is dispatched to it.
class ProfileNotifier extends StateNotifier<ProfileState> {
  ProfileNotifier(ProfileState state) : super(state);

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<FortysevenItemModel> newList = List<FortysevenItemModel>.from(
        state.profileModelObj!.fortysevenItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        profileModelObj:
            state.profileModelObj?.copyWith(fortysevenItemList: newList));
  }
}
