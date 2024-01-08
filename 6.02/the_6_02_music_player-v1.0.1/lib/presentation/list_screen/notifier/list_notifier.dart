import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/list_item_model.dart';
import 'package:the_6_02_music_player/presentation/list_screen/models/list_model.dart';
part 'list_state.dart';

final listNotifier = StateNotifierProvider<ListNotifier, ListState>(
    (ref) => ListNotifier(ListState(
            listModelObj: ListModel(listItemList: [
          ListItemModel(
              songNumber: "1",
              burning: "Burning",
              podvalCaplella: "Podval Caplella"),
          ListItemModel(
              songNumber: "2", burning: "Flashbacks", podvalCaplella: "Emika"),
          ListItemModel(
              songNumber: "3",
              burning: "Renaissance",
              podvalCaplella: "Podval Caplella")
        ]))));

/// A notifier that manages the state of a List according to the event that is dispatched to it.
class ListNotifier extends StateNotifier<ListState> {
  ListNotifier(ListState state) : super(state);
}
