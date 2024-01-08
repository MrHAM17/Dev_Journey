import '../controller/artist_controller.dart';
import '../models/renaissance_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_02_music_player/core/app_export.dart';

// ignore: must_be_immutable
class RenaissanceItemWidget extends StatelessWidget {
  RenaissanceItemWidget(
    this.renaissanceItemModelObj, {
    Key? key,
    this.onTapUrgentSiege,
  }) : super(
          key: key,
        );

  RenaissanceItemModel renaissanceItemModelObj;

  var controller = Get.find<ArtistController>();

  VoidCallback? onTapUrgentSiege;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 159.h,
      child: GestureDetector(
        onTap: () {
          onTapUrgentSiege!.call();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: renaissanceItemModelObj.urgentSiege!.value,
                height: 181.v,
                width: 159.h,
                radius: BorderRadius.circular(
                  12.h,
                ),
              ),
            ),
            SizedBox(height: 8.v),
            Obx(
              () => Text(
                renaissanceItemModelObj.urgentSiege1!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 2.v),
            Obx(
              () => Text(
                renaissanceItemModelObj.damnedAnthem!.value,
                style: CustomTextStyles.bodyMediumOnPrimaryContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
