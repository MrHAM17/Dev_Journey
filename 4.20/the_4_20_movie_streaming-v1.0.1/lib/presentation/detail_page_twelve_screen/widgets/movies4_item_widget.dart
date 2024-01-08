import '../controller/detail_page_twelve_controller.dart';
import '../models/movies4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class Movies4ItemWidget extends StatelessWidget {
  Movies4ItemWidget(
    this.movies4ItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  Movies4ItemModel movies4ItemModelObj;

  var controller = Get.find<DetailPageTwelveController>();

  VoidCallback? onTapMovieCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.h,
      child: GestureDetector(
        onTap: () {
          onTapMovieCard!.call();
        },
        child: Column(
          children: [
            Obx(
              () => CustomImageView(
                imagePath: movies4ItemModelObj.iONetflix!.value,
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
                  movies4ItemModelObj.title!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ),
            SizedBox(height: 2.v),
            SizedBox(
              width: 120.h,
              child: Obx(
                () => Text(
                  movies4ItemModelObj.title1!.value,
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
      ),
    );
  }
}
