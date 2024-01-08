import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/englishuk_item_model.dart';
import '../models/chineses_item_model.dart';
import 'package:the_6_11_hired___job_search/presentation/language_screen/models/language_model.dart';
part 'language_state.dart';

final languageNotifier = StateNotifierProvider<LanguageNotifier, LanguageState>(
    (ref) => LanguageNotifier(LanguageState(
            languageModelObj: LanguageModel(englishukItemList: [
          EnglishukItemModel(
              englishUK: "English (UK)",
              englishUK1: ImageConstant.imgCheckmarkGreenA700)
        ], chinesesItemList: [
          ChinesesItemModel(chineses: "Chineses"),
          ChinesesItemModel(chineses: "Croatian"),
          ChinesesItemModel(chineses: "Czech"),
          ChinesesItemModel(chineses: "Danish"),
          ChinesesItemModel(chineses: "Filipino"),
          ChinesesItemModel(chineses: "Finland")
        ]))));

/// A notifier that manages the state of a Language according to the event that is dispatched to it.
class LanguageNotifier extends StateNotifier<LanguageState> {
  LanguageNotifier(LanguageState state) : super(state);
}
