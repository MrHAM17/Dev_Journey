import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/request_sent_screen/models/request_sent_model.dart';
part 'request_sent_state.dart';

final requestSentNotifier =
    StateNotifierProvider<RequestSentNotifier, RequestSentState>(
  (ref) => RequestSentNotifier(RequestSentState(
    requestSentModelObj: RequestSentModel(),
  )),
);

/// A notifier that manages the state of a RequestSent according to the event that is dispatched to it.
class RequestSentNotifier extends StateNotifier<RequestSentState> {
  RequestSentNotifier(RequestSentState state) : super(state) {}
}
