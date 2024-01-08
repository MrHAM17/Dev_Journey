import '../controller/product_search_controller.dart';
import '../models/productsearch_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_08_shopsie___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class ProductsearchItemWidget extends StatelessWidget {
  ProductsearchItemWidget(
    this.productsearchItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductsearchItemModel productsearchItemModelObj;

  var controller = Get.find<ProductSearchController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: productsearchItemModelObj.longSleeveTshirt!.value,
            height: 171.adaptSize,
            width: 171.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
        ),
        SizedBox(height: 11.v),
        Obx(
          () => Text(
            productsearchItemModelObj.longSleeveTShirt!.value,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
