import '../controller/explore_controller.dart';
import '../models/categories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_01_e_commerce/core/app_export.dart';
import 'package:the_4_01_e_commerce/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  CategoriesItemWidget(
    this.categoriesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategoriesItemModel categoriesItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomIconButton(
            height: 70.adaptSize,
            width: 70.adaptSize,
            padding: EdgeInsets.all(23.h),
            child: CustomImageView(
              imagePath: categoriesItemModelObj.manWorkEquipment!.value,
            ),
          ),
        ),
        SizedBox(height: 8.v),
        Obx(
          () => Text(
            categoriesItemModelObj.officeBag!.value,
            style: CustomTextStyles.labelMediumBluegray300,
          ),
        ),
      ],
    );
  }
}
