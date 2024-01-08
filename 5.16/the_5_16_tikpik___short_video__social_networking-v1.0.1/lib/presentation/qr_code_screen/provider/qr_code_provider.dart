import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/presentation/qr_code_screen/models/qr_code_model.dart';

/// A provider class for the QrCodeScreen.
///
/// This provider manages the state of the QrCodeScreen, including the
/// current qrCodeModelObj
class QrCodeProvider extends ChangeNotifier {
  QrCodeModel qrCodeModelObj = QrCodeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
