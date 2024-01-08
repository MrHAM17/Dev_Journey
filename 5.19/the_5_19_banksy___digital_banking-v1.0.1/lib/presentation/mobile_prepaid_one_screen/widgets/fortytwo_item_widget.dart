import '../models/fortytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';

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
            imagePath: fortytwoItemModelObj?.angelinaDruff,
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
                  fortytwoItemModelObj.jenningsChamplin!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 3.v),
                Text(
                  fortytwoItemModelObj.jenningsChamplin1!,
                  style: CustomTextStyles.bodySmallOnPrimaryContainer,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: fortytwoItemModelObj?.angelinaDruff1,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
        ],
      ),
    );
  }
}
