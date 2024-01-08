import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';

// ignore: must_be_immutable
class PaybillItemWidget extends StatelessWidget {
  PaybillItemWidget({
    Key? key,
    this.onTapOne,
  }) : super(
          key: key,
        );

  VoidCallback? onTapOne;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapOne!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 23.v,
        ),
        decoration: AppDecoration.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgUserYellowA400,
              height: 36.adaptSize,
              width: 36.adaptSize,
            ),
            SizedBox(height: 20.v),
            SizedBox(
              width: 97.h,
              child: Text(
                "Electricity\nBill",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleLarge!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
            SizedBox(height: 9.v),
            SizedBox(
              width: 100.h,
              child: Text(
                "Pay bill of this month",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLarge16.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
