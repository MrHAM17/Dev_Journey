import '../controller/home_controller.dart';
import '../models/options_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class OptionsItemWidget extends StatelessWidget {
  OptionsItemWidget(
    this.optionsItemModelObj, {
    Key? key,
    this.onTapOne,
  }) : super(
          key: key,
        );

  OptionsItemModel optionsItemModelObj;

  var controller = Get.find<HomeController>();

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
            Obx(
              () => CustomIconButton(
                height: 36.adaptSize,
                width: 36.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillRed,
                child: CustomImageView(
                  imagePath: optionsItemModelObj.favorite!.value,
                ),
              ),
            ),
            SizedBox(height: 20.v),
            SizedBox(
              width: 62.h,
              child: Obx(
                () => Text(
                  optionsItemModelObj.sendMoney!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ),
            SizedBox(height: 9.v),
            Obx(
              () => Text(
                optionsItemModelObj.card!.value,
                style: CustomTextStyles.bodyLarge16,
              ),
            ),
            SizedBox(height: 3.v),
          ],
        ),
      ),
    );
  }
}
