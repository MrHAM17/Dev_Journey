import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/transfer_tab_container_screen/models/transfer_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TransferTabContainerScreen.
///
/// This class manages the state of the TransferTabContainerScreen, including the
/// current transferTabContainerModelObj
class TransferTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<TransferTabContainerModel> transferTabContainerModelObj =
      TransferTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
