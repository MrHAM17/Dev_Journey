import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_4_17_housit___buyrentsell_property/presentation/transaction_tab_container_page/models/transaction_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the TransactionTabContainerPage.
///
/// This class manages the state of the TransactionTabContainerPage, including the
/// current transactionTabContainerModelObj
class TransactionTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {TransactionTabContainerController(this.transactionTabContainerModelObj);

Rx<TransactionTabContainerModel> transactionTabContainerModelObj;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

 }
