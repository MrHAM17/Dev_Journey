import 'package:flutter/material.dart';
import 'package:the_7_12_street_style___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class MyorderItemWidget extends StatelessWidget {
  const MyorderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle9237x175,
            height: 203.v,
            width: 150.h,
            radius: BorderRadius.circular(
              30.h,
            ),
          ),
          Spacer(
            flex: 49,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 34.v,
              bottom: 31.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 101.h,
                  child: Text(
                    "VERTLUNE\nBoyfriend Tee",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium!.copyWith(
                      height: 1.25,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 37.h,
                  child: Text(
                    "Yellow\nSize 8",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelLarge!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "",
                        style: theme.textTheme.headlineMedium,
                      ),
                      TextSpan(
                        text: "5".toUpperCase(),
                        style: theme.textTheme.headlineMedium,
                      ),
                      TextSpan(
                        text: "8",
                        style: theme.textTheme.headlineMedium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 50,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 132.v,
              bottom: 22.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "1",
                    style: CustomTextStyles.displaySmallBlack90001,
                  ),
                  TextSpan(
                    text: "x",
                    style: CustomTextStyles.titleMediumBlack90001,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
