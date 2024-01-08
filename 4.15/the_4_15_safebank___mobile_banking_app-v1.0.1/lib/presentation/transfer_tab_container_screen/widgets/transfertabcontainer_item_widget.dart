import '../controller/transfer_tab_container_controller.dart';
import '../models/transfertabcontainer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';

// ignore: must_be_immutable
class TransfertabcontainerItemWidget extends StatelessWidget {
  TransfertabcontainerItemWidget(
    this.transfertabcontainerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TransfertabcontainerItemModel transfertabcontainerItemModelObj;

  var controller = Get.find<TransferTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Obx(
          () => CustomImageView(
            imagePath: transfertabcontainerItemModelObj.ellipse!.value,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 15.v),
          ),
        ),
      ),
    );
  }
}
