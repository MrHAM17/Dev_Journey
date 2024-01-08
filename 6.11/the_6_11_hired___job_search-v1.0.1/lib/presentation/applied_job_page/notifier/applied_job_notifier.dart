import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/applied_job_page/models/applied_job_model.dart';
part 'applied_job_state.dart';

final appliedJobNotifier =
    StateNotifierProvider<AppliedJobNotifier, AppliedJobState>((ref) =>
        AppliedJobNotifier(
            AppliedJobState(appliedJobModelObj: AppliedJobModel())));

/// A notifier that manages the state of a AppliedJob according to the event that is dispatched to it.
class AppliedJobNotifier extends StateNotifier<AppliedJobState> {
  AppliedJobNotifier(AppliedJobState state) : super(state);
}
