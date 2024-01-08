import '../models/nineteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_19_banksy___digital_banking/core/app_export.dart';

// ignore: must_be_immutable
class NineteenItemWidget extends StatelessWidget {
  NineteenItemWidget(
    this.nineteenItemModelObj, {
    Key? key,
    this.onTapAngelinaDruff,
  }) : super(
          key: key,
        );

  NineteenItemModel nineteenItemModelObj;

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
          CustomImageView(
            imagePath: nineteenItemModelObj?.angelinaDruff,
            height: 48.adaptSize,
            width: 48.adaptSize,
            radius: BorderRadius.circular(
              24.h,
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
                Text(
                  nineteenItemModelObj.jenningsChamplin!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 3.v),
                Text(
                  nineteenItemModelObj.jenningsChamplin1!,
                  style: CustomTextStyles.bodySmallOnPrimaryContainer,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: nineteenItemModelObj?.angelinaDruff1,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
        ],
      ),
    );
  }
}
