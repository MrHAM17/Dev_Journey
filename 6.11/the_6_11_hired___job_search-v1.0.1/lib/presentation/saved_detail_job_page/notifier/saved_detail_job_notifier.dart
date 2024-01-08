import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/saved_detail_job_page/models/saved_detail_job_model.dart';
part 'saved_detail_job_state.dart';

final savedDetailJobNotifier = StateNotifierProvider<SavedDetailJobNotifier,
        SavedDetailJobState>(
    (ref) => SavedDetailJobNotifier(
        SavedDetailJobState(savedDetailJobModelObj: SavedDetailJobModel())));

/// A notifier that manages the state of a SavedDetailJob according to the event that is dispatched to it.
class SavedDetailJobNotifier extends StateNotifier<SavedDetailJobState> {
  SavedDetailJobNotifier(SavedDetailJobState state) : super(state);
}
