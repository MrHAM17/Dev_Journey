import '../models/autolayouthorizontal_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class AutolayouthorizontalItemWidget extends StatelessWidget {
  AutolayouthorizontalItemWidget(
    this.autolayouthorizontalItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AutolayouthorizontalItemModel autolayouthorizontalItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.v,
      width: 121.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: autolayouthorizontalItemModelObj?.k,
            height: 200.v,
            width: 121.h,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(10.h, 174.v, 60.h, 10.v),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.circleBorder8,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: autolayouthorizontalItemModelObj?.k1,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 2.v,
                    ),
                    child: Text(
                      autolayouthorizontalItemModelObj.k2!,
                      style: theme.textTheme.labelMedium,
                    ),
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
