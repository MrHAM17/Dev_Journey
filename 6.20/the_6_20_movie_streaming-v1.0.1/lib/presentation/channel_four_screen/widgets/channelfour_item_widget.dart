import '../models/channelfour_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class ChannelfourItemWidget extends StatelessWidget {
  ChannelfourItemWidget(
    this.channelfourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChannelfourItemModel channelfourItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: channelfourItemModelObj?.ktv,
          height: 56.adaptSize,
          width: 56.adaptSize,
          radius: BorderRadius.circular(
            4.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 17.v,
            bottom: 19.v,
          ),
          child: Text(
            channelfourItemModelObj.ktv1!,
            style: CustomTextStyles.titleMediumWhiteA700Medium,
          ),
        ),
      ],
    );
  }
}
