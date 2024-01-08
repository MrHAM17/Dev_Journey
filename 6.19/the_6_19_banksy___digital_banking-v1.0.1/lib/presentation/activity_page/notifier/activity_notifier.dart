import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/activity_page/models/activity_model.dart';
part 'activity_state.dart';

final activityNotifier = StateNotifierProvider<ActivityNotifier, ActivityState>(
  (ref) => ActivityNotifier(ActivityState(
    activityModelObj: ActivityModel(),
  )),
);

/// A notifier that manages the state of a Activity according to the event that is dispatched to it.
class ActivityNotifier extends StateNotifier<ActivityState> {
  ActivityNotifier(ActivityState state) : super(state) {}
}
