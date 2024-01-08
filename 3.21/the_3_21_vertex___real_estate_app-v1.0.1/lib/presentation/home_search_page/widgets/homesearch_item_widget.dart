import '../models/homesearch_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_21_vertex___real_estate_app/core/app_export.dart';

// ignore: must_be_immutable
class HomesearchItemWidget extends StatelessWidget {
  HomesearchItemWidget(
    this.homesearchItemModelObj, {
    Key? key,
    this.onTapSearch,
  }) : super(
          key: key,
        );

  HomesearchItemModel homesearchItemModelObj;

  VoidCallback? onTapSearch;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapSearch!.call();
      },
      child: Row(
        children: [
          CustomImageView(
            imagePath: homesearchItemModelObj?.mightyCincoFamily,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    homesearchItemModelObj.mightyCincoFamily1!,
                    style: CustomTextStyles.titleSmallBold,
                  ),
                  SizedBox(height: 1.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_360".tr,
                          style: CustomTextStyles.labelLargePrimaryBold,
                        ),
                        TextSpan(
                          text: "lbl_s2".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        TextSpan(
                          text: "msg_tillwater_rd_troutman".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
