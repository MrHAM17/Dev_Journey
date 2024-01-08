import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/qr_code_screen/models/qr_code_model.dart';
part 'qr_code_state.dart';

final qrCodeNotifier = StateNotifierProvider<QrCodeNotifier, QrCodeState>(
  (ref) => QrCodeNotifier(QrCodeState(
    qrCodeModelObj: QrCodeModel(),
  )),
);

/// A notifier that manages the state of a QrCode according to the event that is dispatched to it.
class QrCodeNotifier extends StateNotifier<QrCodeState> {
  QrCodeNotifier(QrCodeState state) : super(state) {}
}
