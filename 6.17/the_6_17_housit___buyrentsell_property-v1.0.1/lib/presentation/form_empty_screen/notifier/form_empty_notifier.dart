import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/form_empty_screen/models/form_empty_model.dart';part 'form_empty_state.dart';final formEmptyNotifier = StateNotifierProvider<FormEmptyNotifier, FormEmptyState>((ref) => FormEmptyNotifier(FormEmptyState(emailController: TextEditingController(), passwordController: TextEditingController(), formEmptyModelObj: FormEmptyModel())));
/// A notifier that manages the state of a FormEmpty according to the event that is dispatched to it.
class FormEmptyNotifier extends StateNotifier<FormEmptyState> {FormEmptyNotifier(FormEmptyState state) : super(state);

 }
