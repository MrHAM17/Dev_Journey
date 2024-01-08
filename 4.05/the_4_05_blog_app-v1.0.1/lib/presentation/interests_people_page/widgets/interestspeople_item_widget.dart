import '../controller/interests_people_controller.dart';
import '../models/interestspeople_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_05_blog_app/core/app_export.dart';

// ignore: must_be_immutable
class InterestspeopleItemWidget extends StatelessWidget {
  InterestspeopleItemWidget(
    this.interestspeopleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  InterestspeopleItemModel interestspeopleItemModelObj;

  var controller = Get.find<InterestsPeopleController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Obx(
        () => Text(
          interestspeopleItemModelObj.morePeopleToFollow!.value,
          style: CustomTextStyles.titleSmallBlack900,
        ),
      ),
    );
  }
}
