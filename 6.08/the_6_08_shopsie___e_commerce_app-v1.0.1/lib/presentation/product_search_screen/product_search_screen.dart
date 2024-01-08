import '../product_search_screen/widgets/productsearch_item_widget.dart';
import 'models/productsearch_item_model.dart';
import 'notifier/product_search_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_6_08_shopsie___e_commerce_app/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_6_08_shopsie___e_commerce_app/widgets/app_bar/custom_app_bar.dart';

class ProductSearchScreen extends ConsumerStatefulWidget {
  const ProductSearchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProductSearchScreenState createState() => ProductSearchScreenState();
}

class ProductSearchScreenState extends ConsumerState<ProductSearchScreen> {
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
          child: Consumer(
            builder: (context, ref, _) {
              return GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 200.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.h,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: ref
                        .watch(productSearchNotifier)
                        .productSearchModelObj
                        ?.productsearchItemList
                        .length ??
                    0,
                itemBuilder: (context, index) {
                  ProductsearchItemModel model = ref
                          .watch(productSearchNotifier)
                          .productSearchModelObj
                          ?.productsearchItemList[index] ??
                      ProductsearchItemModel();
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
      title: Consumer(
        builder: (context, ref, _) {
          return AppbarTitleSearchview(
            hintText: "lbl_sl_iders".tr,
            controller: ref.watch(productSearchNotifier).searchController,
          );
        },
      ),
    );
  }
}
