import '../models/autolayouthorizontal3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Autolayouthorizontal3ItemWidget extends StatelessWidget {
  Autolayouthorizontal3ItemWidget(
    this.autolayouthorizontal3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Autolayouthorizontal3ItemModel autolayouthorizontal3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.v,
      width: 121.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: autolayouthorizontal3ItemModelObj?.k,
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
                  CustomIconButton(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    padding: EdgeInsets.all(1.h),
                    child: CustomImageView(
                      imagePath:
                          autolayouthorizontal3ItemModelObj?.overflowMenu,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 2.v,
                    ),
                    child: Text(
                      autolayouthorizontal3ItemModelObj.k1!,
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
