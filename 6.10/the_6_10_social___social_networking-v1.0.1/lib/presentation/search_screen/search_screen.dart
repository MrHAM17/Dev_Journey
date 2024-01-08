import '../search_screen/widgets/recentsearches_item_widget.dart';
import 'models/recentsearches_item_model.dart';
import 'notifier/search_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_10_social___social_networking/core/app_export.dart';
import 'package:the_6_10_social___social_networking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_10_social___social_networking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_10_social___social_networking/widgets/custom_search_view.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends ConsumerState<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 20.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "lbl_search".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Consumer(
                  builder: (context, ref, _) {
                    return CustomSearchView(
                      controller: ref.watch(searchNotifier).searchController,
                      hintText: "lbl_search".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 28.v),
              _buildSearchClearAll(context),
              SizedBox(height: 24.v),
              _buildRecentSearches(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.fromLTRB(19.h, 16.v, 377.h, 16.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchClearAll(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_recently".tr,
            style: CustomTextStyles.titleLargeDeeppurpleA200Bold,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Text(
              "lbl_clear_all".tr,
              style: CustomTextStyles.titleMediumDeeppurpleA200,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentSearches(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.v),
              child: SizedBox(
                width: double.maxFinite,
                child: Divider(
                  height: 2.v,
                  thickness: 2.v,
                  color: theme.colorScheme.secondaryContainer,
                ),
              ),
            );
          },
          itemCount: ref
                  .watch(searchNotifier)
                  .searchModelObj
                  ?.recentsearchesItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            RecentsearchesItemModel model = ref
                    .watch(searchNotifier)
                    .searchModelObj
                    ?.recentsearchesItemList[index] ??
                RecentsearchesItemModel();
            return RecentsearchesItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
