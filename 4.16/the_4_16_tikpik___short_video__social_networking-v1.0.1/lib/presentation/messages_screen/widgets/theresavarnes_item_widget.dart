import '../controller/messages_controller.dart';
import '../models/theresavarnes_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class TheresavarnesItemWidget extends StatelessWidget {
  TheresavarnesItemWidget(
    this.theresavarnesItemModelObj, {
    Key? key,
    this.onTapTypeMessengerList,
  }) : super(
          key: key,
        );

  TheresavarnesItemModel theresavarnesItemModelObj;

  var controller = Get.find<MessagesController>();

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
            Obx(
              () => CustomImageView(
                imagePath: theresavarnesItemModelObj.theresaVarnes!.value,
                height: 60.adaptSize,
                width: 60.adaptSize,
                radius: BorderRadius.circular(
                  30.h,
                ),
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
                  Obx(
                    () => Text(
                      theresavarnesItemModelObj.name!.value,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Obx(
                    () => Text(
                      theresavarnesItemModelObj.message!.value,
                      style: theme.textTheme.titleSmall,
                    ),
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
                      child: Obx(
                        () => Text(
                          theresavarnesItemModelObj.autoLayoutHorizontal!.value,
                          style: CustomTextStyles.bodySmall10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Obx(
                    () => Text(
                      theresavarnesItemModelObj.twoThousand!.value,
                      style: theme.textTheme.titleSmall,
                    ),
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
