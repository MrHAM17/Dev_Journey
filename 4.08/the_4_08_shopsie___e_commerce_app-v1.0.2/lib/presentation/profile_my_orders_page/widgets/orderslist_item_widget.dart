import '../controller/profile_my_orders_controller.dart';
import '../models/orderslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_08_shopsie___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class OrderslistItemWidget extends StatelessWidget {
  OrderslistItemWidget(
    this.orderslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderslistItemModel orderslistItemModelObj;

  var controller = Get.find<ProfileMyOrdersController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: orderslistItemModelObj.image!.value,
            height: 110.v,
            width: 109.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  orderslistItemModelObj.price!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 12.v),
              Obx(
                () => Text(
                  orderslistItemModelObj.shortsInYellow!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 38.v),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_qty2".tr,
                            style: CustomTextStyles.bodyMediumGray600,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Obx(
                      () => Text(
                        orderslistItemModelObj.one!.value,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
