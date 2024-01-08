import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/language_item_model.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/language_screen/models/language_model.dart';
part 'language_event.dart';
part 'language_state.dart';

/// A bloc that manages the state of a Language according to the event that is dispatched to it.
class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc(LanguageState initialState) : super(initialState) {
    on<LanguageInitialEvent>(_onInitialize);
  }

  List<LanguageItemModel> fillLanguageItemList() {
    return [
      LanguageItemModel(
          england: ImageConstant.imgBg,
          england1: "England",
          england2: ImageConstant.imgCheckmarkWhiteA700)
    ];
  }

  _onInitialize(
    LanguageInitialEvent event,
    Emitter<LanguageState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        languageModelObj: state.languageModelObj
            ?.copyWith(languageItemList: fillLanguageItemList())));
    NavigatorService.pushNamed(
      AppRoutes.settingScreen,
    );
  }
}
