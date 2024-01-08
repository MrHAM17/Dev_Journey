import '../controller/mobile_prepaid_one_controller.dart';
import '../models/fortytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';

// ignore: must_be_immutable
class FortytwoItemWidget extends StatelessWidget {
  FortytwoItemWidget(
    this.fortytwoItemModelObj, {
    Key? key,
    this.onTapAngelinaDruff,
  }) : super(
          key: key,
        );

  FortytwoItemModel fortytwoItemModelObj;

  var controller = Get.find<MobilePrepaidOneController>();

  VoidCallback? onTapAngelinaDruff;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapAngelinaDruff!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: fortytwoItemModelObj.angelinaDruff!.value,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    fortytwoItemModelObj.jenningsChamplin!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    fortytwoItemModelObj.jenningsChamplin1!.value,
                    style: CustomTextStyles.bodySmallOnPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Obx(
            () => CustomImageView(
              imagePath: fortytwoItemModelObj.angelinaDruff1!.value,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 12.v),
            ),
          ),
        ],
      ),
    );
  }
}
