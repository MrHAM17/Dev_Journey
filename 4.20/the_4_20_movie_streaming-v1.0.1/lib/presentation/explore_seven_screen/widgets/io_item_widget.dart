import '../controller/explore_seven_controller.dart';
import '../models/io_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class IoItemWidget extends StatelessWidget {
  IoItemWidget(
    this.ioItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  IoItemModel ioItemModelObj;

  var controller = Get.find<ExploreSevenController>();

  VoidCallback? onTapMovieCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMovieCard!.call();
      },
      child: Column(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: ioItemModelObj.io!.value,
              height: 180.v,
              width: 120.h,
              radius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Obx(
              () => Text(
                ioItemModelObj.title!.value,
                style: CustomTextStyles.labelLargeWhiteA700,
              ),
            ),
          ),
          SizedBox(height: 2.v),
          Obx(
            () => Text(
              ioItemModelObj.title1!.value,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
