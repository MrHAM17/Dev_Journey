import '../search_type_keyword_screen/widgets/autolayoutvertical1_item_widget.dart';
import '../search_type_keyword_screen/widgets/autolayoutvertical2_item_widget.dart';
import 'models/autolayoutvertical1_item_model.dart';
import 'models/autolayoutvertical2_item_model.dart';
import 'models/search_type_keyword_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_search_view.dart';
import 'provider/search_type_keyword_provider.dart';

class SearchTypeKeywordScreen extends StatefulWidget {
  const SearchTypeKeywordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchTypeKeywordScreenState createState() => SearchTypeKeywordScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchTypeKeywordProvider(),
      child: SearchTypeKeywordScreen(),
    );
  }
}

class SearchTypeKeywordScreenState extends State<SearchTypeKeywordScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(24.h),
          child: Column(
            children: [
              Selector<SearchTypeKeywordProvider, TextEditingController?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.searchController,
                builder: (context, searchController, child) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_ariana".tr,
                  );
                },
              ),
              SizedBox(height: 24.v),
              _buildAutoLayoutHorizontal(context),
              SizedBox(height: 15.v),
              _buildAutoLayoutVertical(context),
              SizedBox(height: 34.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_suggested_searches".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 14.v),
              _buildAutoLayoutVertical1(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "lbl_recent".tr,
          style: theme.textTheme.titleLarge,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(
            "lbl_clear_all".tr,
            style: CustomTextStyles.titleMediumPrimary,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical(BuildContext context) {
    return Consumer<SearchTypeKeywordProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: provider
              .searchTypeKeywordModelObj.autolayoutvertical1ItemList.length,
          itemBuilder: (context, index) {
            Autolayoutvertical1ItemModel model = provider
                .searchTypeKeywordModelObj.autolayoutvertical1ItemList[index];
            return Autolayoutvertical1ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical1(BuildContext context) {
    return Consumer<SearchTypeKeywordProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 25.v,
            );
          },
          itemCount: provider
              .searchTypeKeywordModelObj.autolayoutvertical2ItemList.length,
          itemBuilder: (context, index) {
            Autolayoutvertical2ItemModel model = provider
                .searchTypeKeywordModelObj.autolayoutvertical2ItemList[index];
            return Autolayoutvertical2ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
