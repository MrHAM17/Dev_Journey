import '../switch_account_bottomsheet/widgets/switchaccount_item_widget.dart';
import 'controller/switch_account_controller.dart';
import 'models/switchaccount_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

class SwitchAccountBottomsheet extends StatelessWidget {
  SwitchAccountBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  SwitchAccountController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray100.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameGray300,
            height: 3.v,
            width: 38.h,
          ),
          SizedBox(height: 23.v),
          Text(
            "lbl_switch_account".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 24.v),
          Divider(),
          SizedBox(height: 23.v),
          Obx(
            () => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 24.v,
                );
              },
              itemCount: controller.switchAccountModelObj.value
                  .switchaccountItemList.value.length,
              itemBuilder: (context, index) {
                SwitchaccountItemModel model = controller.switchAccountModelObj
                    .value.switchaccountItemList.value[index];
                return SwitchaccountItemWidget(
                  model,
                );
              },
            ),
          ),
          SizedBox(height: 28.v),
        ],
      ),
    );
  }
}
