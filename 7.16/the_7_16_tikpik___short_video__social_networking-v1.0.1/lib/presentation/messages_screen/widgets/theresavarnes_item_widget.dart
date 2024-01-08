import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class TheresavarnesItemWidget extends StatelessWidget {
  TheresavarnesItemWidget({
    Key? key,
    this.onTapTypeMessengerList,
  }) : super(
          key: key,
        );

  VoidCallback? onTapTypeMessengerList;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          onTapTypeMessengerList!.call();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse4,
              height: 60.adaptSize,
              width: 60.adaptSize,
              radius: BorderRadius.circular(
                30.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                top: 6.v,
                bottom: 6.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Theresa Varnes",
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "Hi, morning too Andrew!",
                    style: theme.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 6.v),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 25.adaptSize,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 6.v,
                      ),
                      decoration:
                          AppDecoration.gradientDeepOrangeAToOrange.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder12,
                      ),
                      child: Text(
                        "1",
                        style: CustomTextStyles.bodySmall10,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "10.00",
                    style: theme.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
