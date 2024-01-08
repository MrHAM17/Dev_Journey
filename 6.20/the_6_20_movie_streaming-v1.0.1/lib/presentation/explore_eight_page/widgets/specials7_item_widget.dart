import '../models/specials7_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class Specials7ItemWidget extends StatelessWidget {
  Specials7ItemWidget(
    this.specials7ItemModelObj, {
    Key? key,
    this.onTapImgDrama,
  }) : super(
          key: key,
        );

  Specials7ItemModel specials7ItemModelObj;

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
            imagePath: specials7ItemModelObj?.drama,
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
                specials7ItemModelObj.drama1!,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
