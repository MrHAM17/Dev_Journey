import 'package:flutter/material.dart';
import 'package:the_7_05_blog_app/core/app_export.dart';

// ignore: must_be_immutable
class Stories1ItemWidget extends StatelessWidget {
  const Stories1ItemWidget({Key? key})
      : super(
          key: key,
        );

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
                "LOGO",
                style: CustomTextStyles.labelLargeBlack900,
              ),
              SizedBox(height: 6.v),
              Column(
                children: [
                  Text(
                    "Lorem Ipsum dolor set amet",
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
                              "16 days ago",
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
                              "3 min read",
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
