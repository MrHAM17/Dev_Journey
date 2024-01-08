import '../controller/detail_page_seven_controller.dart';
import '../models/movies_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class MoviesItemWidget extends StatelessWidget {
  MoviesItemWidget(
    this.moviesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MoviesItemModel moviesItemModelObj;

  var controller = Get.find<DetailPageSevenController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.h,
      child: Column(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: moviesItemModelObj.iONetflix!.value,
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
                moviesItemModelObj.title!.value,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
          SizedBox(height: 2.v),
          SizedBox(
            width: 120.h,
            child: Obx(
              () => Text(
                moviesItemModelObj.title1!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
