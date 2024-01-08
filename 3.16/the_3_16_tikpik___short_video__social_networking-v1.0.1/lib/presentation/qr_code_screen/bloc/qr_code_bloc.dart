import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/qr_code_screen/models/qr_code_model.dart';
part 'qr_code_event.dart';
part 'qr_code_state.dart';

/// A bloc that manages the state of a QrCode according to the event that is dispatched to it.
class QrCodeBloc extends Bloc<QrCodeEvent, QrCodeState> {
  QrCodeBloc(QrCodeState initialState) : super(initialState) {
    on<QrCodeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    QrCodeInitialEvent event,
    Emitter<QrCodeState> emit,
  ) async {}
}
