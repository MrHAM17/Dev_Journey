import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/faqs_get_help_screen/models/faqs_get_help_model.dart';part 'faqs_get_help_state.dart';final faqsGetHelpNotifier = StateNotifierProvider<FaqsGetHelpNotifier, FaqsGetHelpState>((ref) => FaqsGetHelpNotifier(FaqsGetHelpState(searchController: TextEditingController(), faqsGetHelpModelObj: FaqsGetHelpModel())));
/// A notifier that manages the state of a FaqsGetHelp according to the event that is dispatched to it.
class FaqsGetHelpNotifier extends StateNotifier<FaqsGetHelpState> {FaqsGetHelpNotifier(FaqsGetHelpState state) : super(state);

 }
