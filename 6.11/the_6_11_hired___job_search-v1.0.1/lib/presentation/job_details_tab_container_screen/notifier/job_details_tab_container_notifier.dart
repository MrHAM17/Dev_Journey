import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/framefive_item_model.dart';
import '../models/jobdetailstabcontainer_item_model.dart';
import 'package:the_6_11_hired___job_search/presentation/job_details_tab_container_screen/models/job_details_tab_container_model.dart';
part 'job_details_tab_container_state.dart';

final jobDetailsTabContainerNotifier = StateNotifierProvider<
    JobDetailsTabContainerNotifier, JobDetailsTabContainerState>(
  (ref) => JobDetailsTabContainerNotifier(JobDetailsTabContainerState(
    jobDetailsTabContainerModelObj: JobDetailsTabContainerModel(
        framefiveItemList: List.generate(2, (index) => FramefiveItemModel()),
        jobdetailstabcontainerItemList: [
          JobdetailstabcontainerItemModel(
              wallet: ImageConstant.imgWallet,
              salary: "Salary",
              price: "6k - 11k"),
          JobdetailstabcontainerItemModel(
              wallet: ImageConstant.imgWorkDeepPurple400,
              salary: "Job Type",
              price: "Remote"),
          JobdetailstabcontainerItemModel(
              wallet: ImageConstant.imgProfileOrange500,
              salary: "Position",
              price: "Senior")
        ]),
  )),
);

/// A notifier that manages the state of a JobDetailsTabContainer according to the event that is dispatched to it.
class JobDetailsTabContainerNotifier
    extends StateNotifier<JobDetailsTabContainerState> {
  JobDetailsTabContainerNotifier(JobDetailsTabContainerState state)
      : super(state) {}

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<FramefiveItemModel> newList = List<FramefiveItemModel>.from(
        state.jobDetailsTabContainerModelObj!.framefiveItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        jobDetailsTabContainerModelObj: state.jobDetailsTabContainerModelObj
            ?.copyWith(framefiveItemList: newList));
  }
}
