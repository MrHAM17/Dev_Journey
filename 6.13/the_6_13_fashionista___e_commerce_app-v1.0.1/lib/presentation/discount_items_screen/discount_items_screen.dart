import '../discount_items_screen/widgets/discountitems_item_widget.dart';
import 'models/discountitems_item_model.dart';
import 'notifier/discount_items_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';

class DiscountItemsScreen extends ConsumerStatefulWidget {
  const DiscountItemsScreen({Key? key}) : super(key: key);

  @override
  DiscountItemsScreenState createState() => DiscountItemsScreenState();
}

class DiscountItemsScreenState extends ConsumerState<DiscountItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 24.v, right: 16.h),
                child: Consumer(builder: (context, ref, _) {
                  return ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 14.v);
                      },
                      itemCount: ref
                              .watch(discountItemsNotifier)
                              .discountItemsModelObj
                              ?.discountitemsItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        DiscountitemsItemModel model = ref
                                .watch(discountItemsNotifier)
                                .discountItemsModelObj
                                ?.discountitemsItemList[index] ??
                            DiscountitemsItemModel();
                        return DiscountitemsItemWidget(model);
                      });
                }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_discount_items".tr));
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }
}
