import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/topagentsprofiledetail_item_model.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/top_agents_profile_detail_page/models/top_agents_profile_detail_model.dart';
part 'top_agents_profile_detail_state.dart';

final topAgentsProfileDetailNotifier = StateNotifierProvider<
    TopAgentsProfileDetailNotifier, TopAgentsProfileDetailState>(
  (ref) => TopAgentsProfileDetailNotifier(TopAgentsProfileDetailState(
    topAgentsProfileDetailModelObj:
        TopAgentsProfileDetailModel(topagentsprofiledetailItemList: [
      TopagentsprofiledetailItemModel(
          brookvaleVilla: ImageConstant.imgShape17,
          price: " 320",
          month: "/month",
          brookvaleVilla1: "Brookvale Villa",
          image: ImageConstant.imgSignalOrange3009x9,
          text: "5",
          jakartaIndonesia: "Jakarta, Indonesia"),
      TopagentsprofiledetailItemModel(
          brookvaleVilla: ImageConstant.imgShape18,
          price: " 290",
          month: "/month",
          brookvaleVilla1: "The Overdale "),
      TopagentsprofiledetailItemModel(
          brookvaleVilla: ImageConstant.imgShape17,
          price: " 320",
          month: "/month",
          brookvaleVilla1: "Brookvale Villa"),
      TopagentsprofiledetailItemModel(
          brookvaleVilla: ImageConstant.imgShape18,
          price: " 290",
          month: "/month",
          brookvaleVilla1: "The Overdale ")
    ]),
  )),
);

/// A notifier that manages the state of a TopAgentsProfileDetail according to the event that is dispatched to it.
class TopAgentsProfileDetailNotifier
    extends StateNotifier<TopAgentsProfileDetailState> {
  TopAgentsProfileDetailNotifier(TopAgentsProfileDetailState state)
      : super(state) {}
}
