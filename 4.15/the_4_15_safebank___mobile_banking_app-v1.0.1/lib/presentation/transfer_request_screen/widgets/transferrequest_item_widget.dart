import '../controller/transfer_request_controller.dart';
import '../models/transferrequest_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TransferrequestItemWidget extends StatelessWidget {
  TransferrequestItemWidget(
    this.transferrequestItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TransferrequestItemModel transferrequestItemModelObj;

  var controller = Get.find<TransferRequestController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: transferrequestItemModelObj.zanderWiza!.value,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 14.h,
            top: 5.v,
            bottom: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  transferrequestItemModelObj.zanderWiza1!.value,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 2.v),
              Obx(
                () => Text(
                  transferrequestItemModelObj.uIUXDesigner!.value,
                  style: theme.textTheme.labelMedium,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 13.v,
            bottom: 12.v,
          ),
          child: CustomIconButton(
            height: 25.adaptSize,
            width: 25.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillIndigoTL5,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlus,
            ),
          ),
        ),
      ],
    );
  }
}
