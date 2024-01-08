import '../search_type_keyword_screen/widgets/autolayoutvertical1_item_widget.dart';
import '../search_type_keyword_screen/widgets/autolayoutvertical2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/widgets/custom_search_view.dart';

class SearchTypeKeywordScreen extends StatelessWidget {
  SearchTypeKeywordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

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
              CustomSearchView(
                controller: searchController,
                hintText: "Ariana",
              ),
              SizedBox(height: 24.v),
              _buildAutoLayoutHorizontal(context),
              SizedBox(height: 15.v),
              _buildAutoLayoutVertical(context),
              SizedBox(height: 34.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Suggested Searches",
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
          "Recent",
          style: theme.textTheme.titleLarge,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(
            "Clear All",
            style: CustomTextStyles.titleMediumPrimary,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical(BuildContext context) {
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
      itemCount: 4,
      itemBuilder: (context, index) {
        return Autolayoutvertical1ItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutVertical1(BuildContext context) {
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
      itemCount: 4,
      itemBuilder: (context, index) {
        return Autolayoutvertical2ItemWidget();
      },
    );
  }
}
