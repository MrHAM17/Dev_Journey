import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';

// ignore: must_be_immutable
class CardsItemWidget extends StatelessWidget {
  CardsItemWidget({
    Key? key,
    this.onTapCard,
  }) : super(
          key: key,
        );

  VoidCallback? onTapCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCard!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 23.v,
        ),
        decoration: AppDecoration.gradientPrimaryToOnErrorContainer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jonathan Anderson",
              style: theme.textTheme.labelLarge,
            ),
            SizedBox(height: 30.v),
            Text(
              "1222 3443 9881 1222",
              style: CustomTextStyles.titleMediumOnPrimary,
            ),
            SizedBox(height: 30.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Balance",
                        style: theme.textTheme.labelSmall,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        " 31,250",
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(top: 12.v),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
