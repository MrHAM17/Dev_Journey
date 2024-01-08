import 'package:flutter/material.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class SavedItemWidget extends StatelessWidget {
  const SavedItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.cardBg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle121031,
            height: 112.adaptSize,
            width: 112.adaptSize,
            radius: BorderRadius.circular(
              15.h,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 146.h,
                        child: Text(
                          "The Ice Age: Adventures of buck Wild",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.labelLarge!.copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "Action, Adventure",
                        style: CustomTextStyles.bodySmallPrimaryContainer,
                      ),
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgNotification,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      left: 30.h,
                      bottom: 35.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 22.v),
              CustomElevatedButton(
                height: 30.v,
                width: 120.h,
                text: "Watch now",
                buttonTextStyle: theme.textTheme.bodySmall!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
