import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/apply_job_popup_dialog/models/apply_job_popup_model.dart';
part 'apply_job_popup_state.dart';

final applyJobPopupNotifier =
    StateNotifierProvider<ApplyJobPopupNotifier, ApplyJobPopupState>(
  (ref) => ApplyJobPopupNotifier(ApplyJobPopupState(
    applyJobPopupModelObj: ApplyJobPopupModel(),
  )),
);

/// A notifier that manages the state of a ApplyJobPopup according to the event that is dispatched to it.
class ApplyJobPopupNotifier extends StateNotifier<ApplyJobPopupState> {
  ApplyJobPopupNotifier(ApplyJobPopupState state) : super(state) {}
}
