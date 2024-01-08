import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/history_item_model.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/history_screen/models/history_model.dart';
part 'history_event.dart';
part 'history_state.dart';

/// A bloc that manages the state of a History according to the event that is dispatched to it.
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc(HistoryState initialState) : super(initialState) {
    on<HistoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HistoryInitialEvent event,
    Emitter<HistoryState> emit,
  ) async {
    emit(state.copyWith(
        historyModelObj: state.historyModelObj
            ?.copyWith(historyItemList: fillHistoryItemList())));
  }

  List<HistoryItemModel> fillHistoryItemList() {
    return [
      HistoryItemModel(
          image: ImageConstant.imgRectangle121034,
          mysteryOfMuye: "Mystery of Muye : The Guardian of the Mountain",
          actionAdventure: "Action, Adventure",
          twentyThousandFiveHundredThirt: "2:05:32",
          filesize: "1.2GB"),
      HistoryItemModel(
          image: ImageConstant.imgRectangle121035,
          mysteryOfMuye: "Spider-Man : No Way Home",
          actionAdventure: "Action, Adventure",
          twentyThousandFiveHundredThirt: "2:05:32",
          filesize: "1.2GB"),
      HistoryItemModel(
          image: ImageConstant.imgRectangle121037,
          mysteryOfMuye: "Luca (2021)",
          actionAdventure: "Action, Adventure",
          twentyThousandFiveHundredThirt: "2:05:32",
          filesize: "1.2GB")
    ];
  }
}
