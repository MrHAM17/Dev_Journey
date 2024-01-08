import '../models/autolayouthorizontal4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class Autolayouthorizontal4ItemWidget extends StatelessWidget {
  Autolayouthorizontal4ItemWidget(
    this.autolayouthorizontal4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Autolayouthorizontal4ItemModel autolayouthorizontal4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.v,
      width: 121.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: autolayouthorizontal4ItemModelObj?.k,
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
                    imagePath: autolayouthorizontal4ItemModelObj?.k1,
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
                      autolayouthorizontal4ItemModelObj.k2!,
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
