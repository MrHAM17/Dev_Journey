import '../controller/investments_controller.dart';
import '../models/investmentsummary_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_4_22_first_bank___digital_banking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class InvestmentsummaryItemWidget extends StatelessWidget {
  InvestmentsummaryItemWidget(
    this.investmentsummaryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  InvestmentsummaryItemModel investmentsummaryItemModelObj;

  var controller = Get.find<InvestmentsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomIconButton(
              height: 45.adaptSize,
              width: 45.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillGrayTL22,
              child: CustomImageView(
                imagePath: investmentsummaryItemModelObj.moneyBagIcon!.value,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    investmentsummaryItemModelObj
                        .totalInvestedAmountText!.value,
                    style: TextStyle(
                      color: appTheme.blueGray40001,
                      fontSize: 12.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                Obx(
                  () => Text(
                    investmentsummaryItemModelObj.investmentAmountText!.value,
                    style: TextStyle(
                      color: theme.colorScheme.primary,
                      fontSize: 16.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
