import '../controller/services_controller.dart';
import '../models/loan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class LoanItemWidget extends StatelessWidget {
  LoanItemWidget(
    this.loanItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LoanItemModel loanItemModelObj;

  var controller = Get.find<ServicesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomIconButton(
              height: 45.adaptSize,
              width: 45.adaptSize,
              padding: EdgeInsets.all(12.h),
              child: CustomImageView(
                imagePath: loanItemModelObj.loanImage!.value,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 4.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    loanItemModelObj.loanTitle!.value,
                    style: TextStyle(
                      color: appTheme.blueGray900,
                      fontSize: 14.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                Obx(
                  () => Text(
                    loanItemModelObj.loanDescription!.value,
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
              top: 15.v,
              bottom: 16.v,
            ),
            child: Obx(
              () => Text(
                loanItemModelObj.viewDetailsText!.value,
                style: TextStyle(
                  color: appTheme.indigo500,
                  fontSize: 10.fSize,
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
