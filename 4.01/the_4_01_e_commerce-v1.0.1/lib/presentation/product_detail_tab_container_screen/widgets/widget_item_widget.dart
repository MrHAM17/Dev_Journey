import '../controller/product_detail_tab_container_controller.dart';
import '../models/widget_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_01_e_commerce/core/app_export.dart';

// ignore: must_be_immutable
class WidgetItemWidget extends StatelessWidget {
  WidgetItemWidget(
    this.widgetItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WidgetItemModel widgetItemModelObj;

  var controller = Get.find<ProductDetailTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgProductImage238x375,
      height: 238.v,
      width: 375.h,
    );
  }
}
