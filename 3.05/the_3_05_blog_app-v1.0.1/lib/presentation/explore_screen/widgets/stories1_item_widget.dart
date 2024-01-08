import '../models/stories1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_05_blog_app/core/app_export.dart';

// ignore: must_be_immutable
class Stories1ItemWidget extends StatelessWidget {
  Stories1ItemWidget(
    this.stories1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Stories1ItemModel stories1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                stories1ItemModelObj.home!,
                style: CustomTextStyles.labelLargeBlack900,
              ),
              SizedBox(height: 6.v),
              Column(
                children: [
                  Text(
                    stories1ItemModelObj.easyToUse!,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 17.v),
                  SizedBox(
                    width: 235.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text(
                              stories1ItemModelObj.duration!,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(
                              left: 8.h,
                              top: 8.v,
                              bottom: 8.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.black900.withOpacity(0.53),
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              stories1ItemModelObj.time!,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgBookmarkIcon,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgBlogThumbnail,
          height: 80.adaptSize,
          width: 80.adaptSize,
          radius: BorderRadius.circular(
            5.h,
          ),
          margin: EdgeInsets.only(
            left: 20.h,
            top: 3.v,
            bottom: 3.v,
          ),
        ),
      ],
    );
  }
}
