import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_10_social___social_networking/presentation/detailed_profile_screen/models/detailed_profile_model.dart';
part 'detailed_profile_state.dart';

final detailedProfileNotifier = StateNotifierProvider<DetailedProfileNotifier,
        DetailedProfileState>(
    (ref) => DetailedProfileNotifier(
        DetailedProfileState(detailedProfileModelObj: DetailedProfileModel())));

/// A notifier that manages the state of a DetailedProfile according to the event that is dispatched to it.
class DetailedProfileNotifier extends StateNotifier<DetailedProfileState> {
  DetailedProfileNotifier(DetailedProfileState state) : super(state);
}
