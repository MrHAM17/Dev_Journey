import '../product_search_screen/widgets/productsearch_item_widget.dart';
import 'models/product_search_model.dart';
import 'models/productsearch_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_5_08_shopsie___e_commerce_app/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_5_08_shopsie___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'provider/product_search_provider.dart';

class ProductSearchScreen extends StatefulWidget {
  const ProductSearchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProductSearchScreenState createState() => ProductSearchScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductSearchProvider(),
      child: ProductSearchScreen(),
    );
  }
}

class ProductSearchScreenState extends State<ProductSearchScreen> {
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
          padding: EdgeInsets.only(
            left: 16.h,
            top: 29.v,
            right: 16.h,
          ),
          child: Consumer<ProductSearchProvider>(
            builder: (context, provider, child) {
              return GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 200.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.h,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount:
                    provider.productSearchModelObj.productsearchItemList.length,
                itemBuilder: (context, index) {
                  ProductsearchItemModel model = provider
                      .productSearchModelObj.productsearchItemList[index];
                  return ProductsearchItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      centerTitle: true,
      title: Selector<ProductSearchProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.searchController,
        builder: (context, searchController, child) {
          return AppbarTitleSearchview(
            hintText: "lbl_sl_iders".tr,
            controller: searchController,
          );
        },
      ),
    );
  }
}
