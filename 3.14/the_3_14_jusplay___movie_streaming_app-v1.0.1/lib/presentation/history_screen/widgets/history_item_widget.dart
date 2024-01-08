import '../models/history_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class HistoryItemWidget extends StatelessWidget {
  HistoryItemWidget(
    this.historyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HistoryItemModel historyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.cardBg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: historyItemModelObj?.image,
            height: 112.adaptSize,
            width: 112.adaptSize,
            radius: BorderRadius.circular(
              15.h,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 201.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 131.h,
                          child: Text(
                            historyItemModelObj.mysteryOfMuye!,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.labelLarge!.copyWith(
                              height: 1.50,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          historyItemModelObj.actionAdventure!,
                          style: CustomTextStyles.bodySmallPrimaryContainer,
                        ),
                      ],
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgNotification,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(bottom: 53.v),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 19.v),
              Row(
                children: [
                  Text(
                    historyItemModelObj.twentyThousandFiveHundredThirt!,
                    style: theme.textTheme.labelMedium,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector106,
                    height: 10.v,
                    width: 1.h,
                    margin: EdgeInsets.only(
                      left: 8.h,
                      top: 2.v,
                      bottom: 2.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Text(
                      historyItemModelObj.filesize!,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
