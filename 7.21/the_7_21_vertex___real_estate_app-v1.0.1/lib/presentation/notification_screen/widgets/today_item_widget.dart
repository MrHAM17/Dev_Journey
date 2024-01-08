import 'package:flutter/material.dart';
import 'package:the_7_21_vertex___real_estate_app/core/app_export.dart';
import 'package:the_7_21_vertex___real_estate_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TodayItemWidget extends StatelessWidget {
  const TodayItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 18.v),
          child: CustomIconButton(
            height: 44.adaptSize,
            width: 44.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.fillGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgHomePrimary,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "There are good deals",
              style: CustomTextStyles.titleSmallBold,
            ),
            SizedBox(height: 4.v),
            SizedBox(
              width: 210.h,
              child: Text(
                "Lots of great deals around New York that you should check out",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 3.v,
            bottom: 16.v,
          ),
          child: Column(
            children: [
              Text(
                "1m ago",
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
