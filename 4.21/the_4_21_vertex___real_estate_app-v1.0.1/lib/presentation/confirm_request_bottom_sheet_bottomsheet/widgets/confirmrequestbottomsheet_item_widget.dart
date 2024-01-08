import '../controller/confirm_request_bottom_sheet_controller.dart';
import '../models/confirmrequestbottomsheet_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_21_vertex___real_estate_app/core/app_export.dart';
import 'package:the_4_21_vertex___real_estate_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ConfirmrequestbottomsheetItemWidget extends StatelessWidget {
  ConfirmrequestbottomsheetItemWidget(
    this.confirmrequestbottomsheetItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ConfirmrequestbottomsheetItemModel confirmrequestbottomsheetItemModelObj;

  var controller = Get.find<ConfirmRequestBottomSheetController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.fillGrayTL20,
              child: CustomImageView(
                imagePath: confirmrequestbottomsheetItemModelObj.home!.value,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    confirmrequestbottomsheetItemModelObj.homeClosed!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Obx(
                  () => Text(
                    confirmrequestbottomsheetItemModelObj.twentyFive!.value,
                    style: CustomTextStyles.titleSmallExtraBold,
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
