import '../search_type_keyword_screen/widgets/searchtypekeyword_item_widget.dart';
import 'models/search_type_keyword_model.dart';
import 'models/searchtypekeyword_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_search_view.dart';
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
                    hintText: "lbl_abcdefghijklm".tr,
                    contentPadding: EdgeInsets.only(
                      top: 19.v,
                      right: 30.h,
                      bottom: 19.v,
                    ),
                  );
                },
              ),
              SizedBox(height: 23.v),
              _buildAutoLayoutHorizontal(context),
              SizedBox(height: 24.v),
              Divider(),
              SizedBox(height: 23.v),
              _buildSearchTypeKeyword(context),
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
          "lbl_recent_searches".tr,
          style: theme.textTheme.titleLarge,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            "lbl_clear_all".tr,
            style: CustomTextStyles.titleMediumOnPrimaryContainer16,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchTypeKeyword(BuildContext context) {
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
              .searchTypeKeywordModelObj.searchtypekeywordItemList.length,
          itemBuilder: (context, index) {
            SearchtypekeywordItemModel model = provider
                .searchTypeKeywordModelObj.searchtypekeywordItemList[index];
            return SearchtypekeywordItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
