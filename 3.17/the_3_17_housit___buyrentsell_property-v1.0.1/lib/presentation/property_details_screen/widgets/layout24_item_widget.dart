import '../models/layout24_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class Layout24ItemWidget extends StatelessWidget {
  Layout24ItemWidget(
    this.layout24ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout24ItemModel layout24ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 143.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: layout24ItemModelObj?.bedroom,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 4.v,
                ),
                child: Text(
                  layout24ItemModelObj.bedroomCounter!,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
