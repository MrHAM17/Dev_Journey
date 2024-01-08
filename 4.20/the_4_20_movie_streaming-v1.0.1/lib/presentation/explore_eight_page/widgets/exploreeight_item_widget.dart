import '../controller/explore_eight_controller.dart';
import '../models/exploreeight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class ExploreeightItemWidget extends StatelessWidget {
  ExploreeightItemWidget(
    this.exploreeightItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  ExploreeightItemModel exploreeightItemModelObj;

  var controller = Get.find<ExploreEightController>();

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
              imagePath: exploreeightItemModelObj.io!.value,
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
                exploreeightItemModelObj.title!.value,
                style: CustomTextStyles.labelLargeWhiteA700,
              ),
            ),
          ),
          SizedBox(height: 2.v),
          Obx(
            () => Text(
              exploreeightItemModelObj.title1!.value,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
