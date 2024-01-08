import '../controller/transactions_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<TransactionsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 2.v,
            ),
            child: Obx(
              () => CustomIconButton(
                height: 35.adaptSize,
                width: 35.adaptSize,
                padding: EdgeInsets.all(10.h),
                decoration: IconButtonStyleHelper.outlineGreen,
                child: CustomImageView(
                  imagePath: userprofileItemModelObj.arrowIcon!.value,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userprofileItemModelObj.salesText!.value,
                    style: TextStyle(
                      color: appTheme.blueGray900,
                      fontSize: 14.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 4.v),
                Obx(
                  () => Text(
                    userprofileItemModelObj.timeText!.value,
                    style: TextStyle(
                      color: appTheme.blueGray40001,
                      fontSize: 12.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 17.v,
              bottom: 10.v,
            ),
            child: Obx(
              () => Text(
                userprofileItemModelObj.amountText!.value,
                style: TextStyle(
                  color: appTheme.green600,
                  fontSize: 14.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
