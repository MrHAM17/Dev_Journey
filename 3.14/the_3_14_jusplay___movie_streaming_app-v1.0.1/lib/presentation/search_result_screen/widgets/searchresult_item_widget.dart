import '../models/searchresult_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class SearchresultItemWidget extends StatelessWidget {
  SearchresultItemWidget(
    this.searchresultItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchresultItemModel searchresultItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: searchresultItemModelObj?.rectangle,
      height: 140.v,
      width: 102.h,
      radius: BorderRadius.circular(
        10.h,
      ),
    );
  }
}
