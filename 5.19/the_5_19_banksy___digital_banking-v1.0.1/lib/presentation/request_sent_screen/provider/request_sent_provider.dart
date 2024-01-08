import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/request_sent_screen/models/request_sent_model.dart';

/// A provider class for the RequestSentScreen.
///
/// This provider manages the state of the RequestSentScreen, including the
/// current requestSentModelObj
class RequestSentProvider extends ChangeNotifier {
  RequestSentModel requestSentModelObj = RequestSentModel();

  @override
  void dispose() {
    super.dispose();
  }
}
