import '../product_discover_screen/widgets/list_item_widget.dart';
import 'models/list_item_model.dart';
import 'models/product_discover_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_5_08_shopsie___e_commerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_5_08_shopsie___e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:the_5_08_shopsie___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'provider/product_discover_provider.dart';

class ProductDiscoverScreen extends StatefulWidget {
  const ProductDiscoverScreen({Key? key}) : super(key: key);

  @override
  ProductDiscoverScreenState createState() => ProductDiscoverScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProductDiscoverProvider(),
        child: ProductDiscoverScreen());
  }
}

class ProductDiscoverScreenState extends State<ProductDiscoverScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.h),
                child: Consumer<ProductDiscoverProvider>(
                    builder: (context, provider, child) {
                  return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 312.v,
                          crossAxisCount: 2,
                          mainAxisSpacing: 14.h,
                          crossAxisSpacing: 14.h),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount:
                          provider.productDiscoverModelObj.listItemList.length,
                      itemBuilder: (context, index) {
                        ListItemModel model = provider
                            .productDiscoverModelObj.listItemList[index];
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

  /// Navigates to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }
}
