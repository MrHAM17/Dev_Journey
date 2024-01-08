import '../models/trendingnow2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class Trendingnow2ItemWidget extends StatelessWidget {
  Trendingnow2ItemWidget(
    this.trendingnow2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Trendingnow2ItemModel trendingnow2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: trendingnow2ItemModelObj?.image,
          height: 188.v,
          width: 184.h,
          radius: BorderRadius.circular(
            28.h,
          ),
        ),
        SizedBox(height: 8.v),
        SizedBox(
          width: 182.h,
          child: Text(
            trendingnow2ItemModelObj.loremIpsumDolor!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleMedium_1.copyWith(
              height: 1.40,
            ),
          ),
        ),
      ],
    );
  }
}
