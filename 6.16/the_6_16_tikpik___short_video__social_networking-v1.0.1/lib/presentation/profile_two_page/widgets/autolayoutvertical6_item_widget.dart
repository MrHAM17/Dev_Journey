import '../models/autolayoutvertical6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Autolayoutvertical6ItemWidget extends StatelessWidget {
  Autolayoutvertical6ItemWidget(
    this.autolayoutvertical6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Autolayoutvertical6ItemModel autolayoutvertical6ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 200.v,
          width: 121.h,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CustomImageView(
                imagePath: autolayoutvertical6ItemModelObj?.k,
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
                        imagePath: autolayoutvertical6ItemModelObj?.k1,
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
                          autolayoutvertical6ItemModelObj.k2!,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 200.v,
          width: 120.h,
          margin: EdgeInsets.only(left: 8.h),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CustomImageView(
                imagePath: autolayoutvertical6ItemModelObj?.k3,
                height: 200.v,
                width: 120.h,
                radius: BorderRadius.circular(
                  12.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  margin: EdgeInsets.fromLTRB(9.h, 174.v, 60.h, 10.v),
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
                              autolayoutvertical6ItemModelObj?.overflowMenu,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 2.v,
                        ),
                        child: Text(
                          autolayoutvertical6ItemModelObj.k4!,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
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
