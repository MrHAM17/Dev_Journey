import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/view_screen/models/view_model.dart';part 'view_state.dart';final viewNotifier = StateNotifierProvider<ViewNotifier, ViewState>((ref) => ViewNotifier(ViewState(viewModelObj: ViewModel())));
/// A notifier that manages the state of a View according to the event that is dispatched to it.
class ViewNotifier extends StateNotifier<ViewState> {ViewNotifier(ViewState state) : super(state);

 }
