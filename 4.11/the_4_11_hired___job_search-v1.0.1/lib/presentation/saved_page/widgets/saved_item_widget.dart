import '../bloc/saved_bloc.dart';
import '../controller/saved_controller.dart';
import '../models/fulltime7_item_model.dart';
import '../models/saved_item_model.dart';
import 'fulltime7_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SavedItemWidget extends StatelessWidget {
  SavedItemWidget(
    this.savedItemModelObj, {
    Key? key,
    this.onTapBag,
  }) : super(
          key: key,
        );

  SavedItemModel savedItemModelObj;

  var controller = Get.find<SavedController>();

  VoidCallback? onTapBag;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapBag!.call();
      },
      child: Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 1.v,
                bottom: 67.v,
              ),
              child: Obx(
                () => CustomIconButton(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                    imagePath: savedItemModelObj.bag!.value,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      savedItemModelObj.digitalMarketing!.value,
                      style: CustomTextStyles.titleMediumBold_1,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Obx(
                    () => Text(
                      savedItemModelObj.motorola!.value,
                      style: CustomTextStyles.labelLargeGray500,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Obx(
                    () => Text(
                      savedItemModelObj.price!.value,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Obx(
                    () => Wrap(
                      runSpacing: 8.v,
                      spacing: 8.h,
                      children: List<Widget>.generate(
                        controller.savedItemModelObj.value.fulltime7ItemList
                            .value.length,
                        (index) {
                          Fulltime7ItemModel model = controller
                              .savedItemModelObj
                              .value
                              .fulltime7ItemList
                              .value[index];

                          return Fulltime7ItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgComponent3,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                left: 30.h,
                bottom: 92.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
