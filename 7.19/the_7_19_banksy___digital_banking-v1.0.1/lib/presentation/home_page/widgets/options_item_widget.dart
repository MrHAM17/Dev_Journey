import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class OptionsItemWidget extends StatelessWidget {
  OptionsItemWidget({
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
          vertical: 24.v,
        ),
        decoration: AppDecoration.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillRed,
              child: CustomImageView(
                imagePath: ImageConstant.imgFavorite,
              ),
            ),
            SizedBox(height: 20.v),
            SizedBox(
              width: 62.h,
              child: Text(
                "Send\nMoney",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleLarge!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
            SizedBox(height: 9.v),
            Text(
              "To acc to acc",
              style: CustomTextStyles.bodyLarge16,
            ),
            SizedBox(height: 3.v),
          ],
        ),
      ),
    );
  }
}
