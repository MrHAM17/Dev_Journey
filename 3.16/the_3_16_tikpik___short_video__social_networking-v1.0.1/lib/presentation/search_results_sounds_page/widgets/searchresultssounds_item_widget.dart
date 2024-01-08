import '../models/searchresultssounds_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class SearchresultssoundsItemWidget extends StatelessWidget {
  SearchresultssoundsItemWidget(
    this.searchresultssoundsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchresultssoundsItemModel searchresultssoundsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: searchresultssoundsItemModelObj?.k,
          height: 80.adaptSize,
          width: 80.adaptSize,
          radius: BorderRadius.circular(
            16.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 2.v,
            bottom: 4.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                searchresultssoundsItemModelObj.soundsTitle!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 7.v),
              Text(
                searchresultssoundsItemModelObj.singer!,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 9.v),
              Text(
                searchresultssoundsItemModelObj.time!,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 31.v),
          child: Text(
            searchresultssoundsItemModelObj.total!,
            style: CustomTextStyles.titleSmallSemiBold,
          ),
        ),
      ],
    );
  }
}
