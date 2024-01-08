import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_4_17_housit___buyrentsell_property/presentation/payment_empty_tab_container_screen/models/payment_empty_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the PaymentEmptyTabContainerScreen.
///
/// This class manages the state of the PaymentEmptyTabContainerScreen, including the
/// current paymentEmptyTabContainerModelObj
class PaymentEmptyTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<PaymentEmptyTabContainerModel> paymentEmptyTabContainerModelObj = PaymentEmptyTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

 }
