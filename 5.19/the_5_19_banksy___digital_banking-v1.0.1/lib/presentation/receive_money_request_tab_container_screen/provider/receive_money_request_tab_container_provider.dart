import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/receive_money_request_tab_container_screen/models/receive_money_request_tab_container_model.dart';

/// A provider class for the ReceiveMoneyRequestTabContainerScreen.
///
/// This provider manages the state of the ReceiveMoneyRequestTabContainerScreen, including the
/// current receiveMoneyRequestTabContainerModelObj
class ReceiveMoneyRequestTabContainerProvider extends ChangeNotifier {
  ReceiveMoneyRequestTabContainerModel receiveMoneyRequestTabContainerModelObj =
      ReceiveMoneyRequestTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
