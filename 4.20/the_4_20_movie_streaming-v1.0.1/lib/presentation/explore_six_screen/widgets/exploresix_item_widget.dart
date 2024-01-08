import '../controller/explore_six_controller.dart';
import '../models/exploresix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class ExploresixItemWidget extends StatelessWidget {
  ExploresixItemWidget(
    this.exploresixItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  ExploresixItemModel exploresixItemModelObj;

  var controller = Get.find<ExploreSixController>();

  VoidCallback? onTapMovieCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMovieCard!.call();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: exploresixItemModelObj.turnerHooch!.value,
              height: 180.v,
              width: 120.h,
              radius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Obx(
            () => Text(
              exploresixItemModelObj.title!.value,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 3.v),
          Obx(
            () => Text(
              exploresixItemModelObj.title1!.value,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
