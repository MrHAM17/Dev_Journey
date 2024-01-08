import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/downloaded_item_model.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/downloaded_page/models/downloaded_model.dart';
part 'downloaded_event.dart';
part 'downloaded_state.dart';

/// A bloc that manages the state of a Downloaded according to the event that is dispatched to it.
class DownloadedBloc extends Bloc<DownloadedEvent, DownloadedState> {
  DownloadedBloc(DownloadedState initialState) : super(initialState) {
    on<DownloadedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DownloadedInitialEvent event,
    Emitter<DownloadedState> emit,
  ) async {
    emit(state.copyWith(
        downloadedModelObj: state.downloadedModelObj?.copyWith(
      downloadedItemList: fillDownloadedItemList(),
    )));
  }

  List<DownloadedItemModel> fillDownloadedItemList() {
    return [
      DownloadedItemModel(
          image: ImageConstant.imgRectangle12103,
          actionAdventure: "Action, Adventure",
          twentyThousandFiveHundredThirt: "2:05:32",
          filesize: "1.2GB"),
      DownloadedItemModel(
          image: ImageConstant.imgRectangle12103112x112,
          actionAdventure: "Action, Adventure",
          twentyThousandFiveHundredThirt: "2:05:32",
          filesize: "1.2GB")
    ];
  }
}
