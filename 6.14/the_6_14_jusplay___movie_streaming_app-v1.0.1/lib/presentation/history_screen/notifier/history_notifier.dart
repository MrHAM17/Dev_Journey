import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/history_item_model.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/history_screen/models/history_model.dart';
part 'history_state.dart';

final historyNotifier = StateNotifierProvider<HistoryNotifier, HistoryState>(
    (ref) => HistoryNotifier(HistoryState(
            historyModelObj: HistoryModel(historyItemList: [
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
        ]))));

/// A notifier that manages the state of a History according to the event that is dispatched to it.
class HistoryNotifier extends StateNotifier<HistoryState> {
  HistoryNotifier(HistoryState state) : super(state);
}
