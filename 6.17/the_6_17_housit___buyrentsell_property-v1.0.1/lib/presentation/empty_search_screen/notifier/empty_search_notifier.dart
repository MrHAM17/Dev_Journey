import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/empty_search_screen/models/empty_search_model.dart';part 'empty_search_state.dart';final emptySearchNotifier = StateNotifierProvider<EmptySearchNotifier, EmptySearchState>((ref) => EmptySearchNotifier(EmptySearchState(searchController: TextEditingController(), emptySearchModelObj: EmptySearchModel())));
/// A notifier that manages the state of a EmptySearch according to the event that is dispatched to it.
class EmptySearchNotifier extends StateNotifier<EmptySearchState> {EmptySearchNotifier(EmptySearchState state) : super(state);

 }
