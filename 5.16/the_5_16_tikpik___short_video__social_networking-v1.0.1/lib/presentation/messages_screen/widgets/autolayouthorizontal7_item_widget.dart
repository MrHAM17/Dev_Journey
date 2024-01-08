import '../models/autolayouthorizontal7_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class Autolayouthorizontal7ItemWidget extends StatelessWidget {
  Autolayouthorizontal7ItemWidget(
    this.autolayouthorizontal7ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Autolayouthorizontal7ItemModel autolayouthorizontal7ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: [
            CustomImageView(
              imagePath: autolayouthorizontal7ItemModelObj?.aubrey,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                40.h,
              ),
            ),
            SizedBox(height: 7.v),
            Text(
              autolayouthorizontal7ItemModelObj.name!,
              style: CustomTextStyles.titleSmallGray900SemiBold,
            ),
          ],
        ),
      ),
    );
  }
}
