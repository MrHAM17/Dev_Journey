import '../models/interestspeople_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_05_blog_app/core/app_export.dart';

// ignore: must_be_immutable
class InterestspeopleItemWidget extends StatelessWidget {
  InterestspeopleItemWidget(
    this.interestspeopleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  InterestspeopleItemModel interestspeopleItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Text(
        interestspeopleItemModelObj.morePeopleToFollow!,
        style: CustomTextStyles.titleSmallBlack900,
      ),
    );
  }
}
