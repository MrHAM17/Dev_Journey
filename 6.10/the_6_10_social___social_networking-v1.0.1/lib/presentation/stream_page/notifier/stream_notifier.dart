import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/stream_item_model.dart';
import 'package:the_6_10_social___social_networking/presentation/stream_page/models/stream_model.dart';
part 'stream_state.dart';

final streamNotifier = StateNotifierProvider<StreamNotifier, StreamState>(
  (ref) => StreamNotifier(StreamState(
    streamModelObj: StreamModel(
        streamItemList: [StreamItemModel(eighteen: ImageConstant.img18)]),
  )),
);

/// A notifier that manages the state of a Stream according to the event that is dispatched to it.
class StreamNotifier extends StateNotifier<StreamState> {
  StreamNotifier(StreamState state) : super(state) {}
}
