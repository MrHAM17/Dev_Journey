import '../models/about_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class AboutItemWidget extends StatelessWidget {
  AboutItemWidget(
    this.aboutItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AboutItemModel aboutItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 127.v,
      width: 104.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: aboutItemModelObj?.menaMassoud,
            height: 127.v,
            width: 104.h,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 54.h,
              margin: EdgeInsets.only(
                left: 12.h,
                bottom: 6.v,
              ),
              child: Text(
                aboutItemModelObj.menaMassoud1!,
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
