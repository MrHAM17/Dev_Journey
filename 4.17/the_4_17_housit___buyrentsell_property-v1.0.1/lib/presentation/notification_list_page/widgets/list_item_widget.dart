import '../controller/notification_list_controller.dart';
import '../models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(
    this.listItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListItemModel listItemModelObj;

  var controller = Get.find<NotificationListController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: listItemModelObj.emmettPerry!.value,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(
                25.h,
              ),
              margin: EdgeInsets.only(bottom: 38.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    listItemModelObj.emmettPerry1!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 237.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_just_messaged_you2".tr,
                          style: CustomTextStyles.labelLargeBluegray600Medium,
                        ),
                        TextSpan(
                          text: "lbl_message".tr,
                          style: CustomTextStyles.labelLargeMedium_1,
                        ),
                        TextSpan(
                          text: "lbl_tab".tr,
                          style: CustomTextStyles.labelLargeBluegray600Medium,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 13.v),
                Obx(
                  () => Text(
                    listItemModelObj.time!.value,
                    style: CustomTextStyles.labelMediumOnPrimaryContainer_1,
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
