import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/job_details_page/models/job_details_model.dart';
part 'job_details_state.dart';

final jobDetailsNotifier =
    StateNotifierProvider<JobDetailsNotifier, JobDetailsState>((ref) =>
        JobDetailsNotifier(
            JobDetailsState(jobDetailsModelObj: JobDetailsModel())));

/// A notifier that manages the state of a JobDetails according to the event that is dispatched to it.
class JobDetailsNotifier extends StateNotifier<JobDetailsState> {
  JobDetailsNotifier(JobDetailsState state) : super(state);
}
