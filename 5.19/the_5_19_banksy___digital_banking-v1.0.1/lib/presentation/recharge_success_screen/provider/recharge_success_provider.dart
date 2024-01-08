import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/recharge_success_screen/models/recharge_success_model.dart';

/// A provider class for the RechargeSuccessScreen.
///
/// This provider manages the state of the RechargeSuccessScreen, including the
/// current rechargeSuccessModelObj
class RechargeSuccessProvider extends ChangeNotifier {
  RechargeSuccessModel rechargeSuccessModelObj = RechargeSuccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}
