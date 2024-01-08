import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/jobtype_item_model.dart';
import 'package:the_6_11_hired___job_search/presentation/job_type_screen/models/job_type_model.dart';
part 'job_type_state.dart';

final jobTypeNotifier = StateNotifierProvider<JobTypeNotifier, JobTypeState>(
    (ref) => JobTypeNotifier(JobTypeState(
            jobTypeModelObj: JobTypeModel(jobtypeItemList: [
          JobtypeItemModel(
              work: ImageConstant.imgWork,
              findAJob: "Find a job",
              itSEasyToFind: "It’s easy to find your dream jobs here with us."),
          JobtypeItemModel(
              work: ImageConstant.imgProfileOrange500,
              findAJob: "Find a employee",
              itSEasyToFind: "It’s easy to find eployees here with us.")
        ]))));

/// A notifier that manages the state of a JobType according to the event that is dispatched to it.
class JobTypeNotifier extends StateNotifier<JobTypeState> {
  JobTypeNotifier(JobTypeState state) : super(state);
}
