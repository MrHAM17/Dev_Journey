import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/notifications_screen/models/notifications_model.dart';

/// A provider class for the NotificationsScreen.
///
/// This provider manages the state of the NotificationsScreen, including the
/// current notificationsModelObj
class NotificationsProvider extends ChangeNotifier {
  NotificationsModel notificationsModelObj = NotificationsModel();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;

  bool isSelectedSwitch4 = false;

  bool isSelectedSwitch5 = false;

  bool isSelectedSwitch6 = false;

  bool isSelectedSwitch7 = false;

  @override
  void dispose() {
    super.dispose();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }

  void changeSwitchBox2(bool value) {
    isSelectedSwitch1 = value;
    notifyListeners();
  }

  void changeSwitchBox3(bool value) {
    isSelectedSwitch2 = value;
    notifyListeners();
  }

  void changeSwitchBox4(bool value) {
    isSelectedSwitch3 = value;
    notifyListeners();
  }

  void changeSwitchBox5(bool value) {
    isSelectedSwitch4 = value;
    notifyListeners();
  }

  void changeSwitchBox6(bool value) {
    isSelectedSwitch5 = value;
    notifyListeners();
  }

  void changeSwitchBox7(bool value) {
    isSelectedSwitch6 = value;
    notifyListeners();
  }

  void changeSwitchBox8(bool value) {
    isSelectedSwitch7 = value;
    notifyListeners();
  }
}
