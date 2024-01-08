import '../models/myorder_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_12_street_style___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class MyorderItemWidget extends StatelessWidget {
  MyorderItemWidget(
    this.myorderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MyorderItemModel myorderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        children: [
          CustomImageView(
            imagePath: myorderItemModelObj?.x,
            height: 203.v,
            width: 150.h,
            radius: BorderRadius.circular(
              30.h,
            ),
          ),
          Spacer(
            flex: 49,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 34.v,
              bottom: 31.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 101.h,
                  child: Text(
                    myorderItemModelObj.vERTLUNEBoyfriend!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium!.copyWith(
                      height: 1.25,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 37.h,
                  child: Text(
                    myorderItemModelObj.yellowSizeCounter!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelLarge!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl".tr,
                        style: theme.textTheme.headlineMedium,
                      ),
                      TextSpan(
                        text: "lbl_5".tr.toUpperCase(),
                        style: theme.textTheme.headlineMedium,
                      ),
                      TextSpan(
                        text: "lbl_8".tr,
                        style: theme.textTheme.headlineMedium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 50,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 132.v,
              bottom: 22.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_1".tr,
                    style: CustomTextStyles.displaySmallBlack90001,
                  ),
                  TextSpan(
                    text: "lbl_x".tr,
                    style: CustomTextStyles.titleMediumBlack90001,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
