import 'package:flutter/material.dart';
import 'package:the_7_05_blog_app/core/app_export.dart';

// ignore: must_be_immutable
class InterestspeopleItemWidget extends StatelessWidget {
  const InterestspeopleItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Text(
        "MORE PEOPLE TO FOLLOW",
        style: CustomTextStyles.titleSmallBlack900,
      ),
    );
  }
}
