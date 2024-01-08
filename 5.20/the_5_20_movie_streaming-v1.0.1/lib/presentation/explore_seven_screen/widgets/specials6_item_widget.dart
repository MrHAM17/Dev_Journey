import '../models/specials6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class Specials6ItemWidget extends StatelessWidget {
  Specials6ItemWidget(
    this.specials6ItemModelObj, {
    Key? key,
    this.onTapImgDrama,
  }) : super(
          key: key,
        );

  Specials6ItemModel specials6ItemModelObj;

  VoidCallback? onTapImgDrama;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.v,
      width: 90.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: specials6ItemModelObj?.drama,
            height: 60.v,
            width: 90.h,
            radius: BorderRadius.circular(
              2.h,
            ),
            alignment: Alignment.center,
            onTap: () {
              onTapImgDrama!.call();
            },
          ),
          Align(
            alignment: Alignment.center,
            child: Opacity(
              opacity: 0.87,
              child: Text(
                specials6ItemModelObj.drama1!,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
