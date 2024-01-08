import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/apply_job_screen/models/apply_job_model.dart';
part 'apply_job_state.dart';

final applyJobNotifier = StateNotifierProvider<ApplyJobNotifier, ApplyJobState>(
    (ref) => ApplyJobNotifier(ApplyJobState(
        fullNameController: TextEditingController(),
        emailController: TextEditingController(),
        frameOneController: TextEditingController(),
        applyJobModelObj: ApplyJobModel())));

/// A notifier that manages the state of a ApplyJob according to the event that is dispatched to it.
class ApplyJobNotifier extends StateNotifier<ApplyJobState> {
  ApplyJobNotifier(ApplyJobState state) : super(state);
}
