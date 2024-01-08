import '../models/frame1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Frame1ItemWidget extends StatelessWidget {
  Frame1ItemWidget(
    this.frame1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame1ItemModel frame1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.cardBg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      width: 214.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 86.v,
            width: 214.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: frame1ItemModelObj?.image,
                  height: 86.v,
                  width: 214.h,
                  radius: BorderRadius.vertical(
                    top: Radius.circular(10.h),
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8.v),
                    child: Container(
                      height: 2.v,
                      width: 194.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primaryContainer,
                      ),
                      child: ClipRRect(
                        child: LinearProgressIndicator(
                          value: 0.24,
                          backgroundColor: theme.colorScheme.primaryContainer,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 139.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Text(
                frame1ItemModelObj.doctorStrange!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
          SizedBox(height: 7.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 4.v,
                  bottom: 3.v,
                ),
                child: Text(
                  frame1ItemModelObj.fifteenThousandThirtyFive!,
                  style: theme.textTheme.labelSmall,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 9.h,
                  top: 4.v,
                  bottom: 3.v,
                ),
                child: Text(
                  frame1ItemModelObj.zipcode!,
                  style: theme.textTheme.labelSmall,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 128.h),
                child: CustomIconButton(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  child: CustomImageView(
                    imagePath: frame1ItemModelObj?.lightBulb,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
