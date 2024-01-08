import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/language_item_model.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/language_screen/models/language_model.dart';
part 'language_state.dart';

final languageNotifier = StateNotifierProvider<LanguageNotifier, LanguageState>(
    (ref) => LanguageNotifier(LanguageState(
        searchController: TextEditingController(),
        languageModelObj: LanguageModel(languageItemList: [
          LanguageItemModel(
              england: ImageConstant.imgBg,
              england1: "England",
              england2: ImageConstant.imgCheckmarkWhiteA700)
        ]))));

/// A notifier that manages the state of a Language according to the event that is dispatched to it.
class LanguageNotifier extends StateNotifier<LanguageState> {
  LanguageNotifier(LanguageState state) : super(state);
}
