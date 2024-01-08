import 'package:flutter/material.dart';
import 'package:the_5_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_5_15_safebank___mobile_banking_app/presentation/mine_page_container_screen/models/mine_page_container_model.dart';

/// A provider class for the MinePageContainerScreen.
///
/// This provider manages the state of the MinePageContainerScreen, including the
/// current minePageContainerModelObj

// ignore_for_file: must_be_immutable
class MinePageContainerProvider extends ChangeNotifier {
  MinePageContainerModel minePageContainerModelObj = MinePageContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
