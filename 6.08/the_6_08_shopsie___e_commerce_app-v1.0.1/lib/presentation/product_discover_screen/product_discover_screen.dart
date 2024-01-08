import '../product_discover_screen/widgets/list_item_widget.dart';
import 'models/list_item_model.dart';
import 'notifier/product_discover_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_6_08_shopsie___e_commerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_08_shopsie___e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:the_6_08_shopsie___e_commerce_app/widgets/app_bar/custom_app_bar.dart';

class ProductDiscoverScreen extends ConsumerStatefulWidget {
  const ProductDiscoverScreen({Key? key}) : super(key: key);

  @override
  ProductDiscoverScreenState createState() => ProductDiscoverScreenState();
}

class ProductDiscoverScreenState extends ConsumerState<ProductDiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.h),
                child: Consumer(builder: (context, ref, _) {
                  return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 312.v,
                          crossAxisCount: 2,
                          mainAxisSpacing: 14.h,
                          crossAxisSpacing: 14.h),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: ref
                              .watch(productDiscoverNotifier)
                              .productDiscoverModelObj
                              ?.listItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        ListItemModel model = ref
                                .watch(productDiscoverNotifier)
                                .productDiscoverModelObj
                                ?.listItemList[index] ??
                            ListItemModel();
                        return ListItemWidget(model);
                      });
                }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 12.h, top: 20.v, bottom: 20.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_shopsie".tr),
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }
}
