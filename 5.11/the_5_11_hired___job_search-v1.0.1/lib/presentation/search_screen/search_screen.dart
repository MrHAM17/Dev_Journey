import '../search_screen/widgets/search_item_widget.dart';
import 'models/search_item_model.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_5_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_5_11_hired___job_search/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_5_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';
import 'package:the_5_11_hired___job_search/widgets/custom_search_view.dart';
import 'provider/search_provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  SearchScreenState createState() => SearchScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SearchProvider(), child: SearchScreen());
  }
}

class SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 30.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Column(children: [
                          Selector<SearchProvider, TextEditingController?>(
                              selector: (context, provider) =>
                                  provider.searchController,
                              builder: (context, searchController, child) {
                                return CustomSearchView(
                                    controller: searchController,
                                    hintText: "lbl_search".tr);
                              }),
                          SizedBox(height: 24.v),
                          _buildSearch(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapImage(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_find_jobs".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgComponent3,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Consumer<SearchProvider>(builder: (context, provider, child) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 12.v);
          },
          itemCount: provider.searchModelObj.searchItemList.length,
          itemBuilder: (context, index) {
            SearchItemModel model =
                provider.searchModelObj.searchItemList[index];
            return SearchItemWidget(model, onTapSettings: () {
              onTapSettings(context);
            });
          });
    });
  }

  /// Navigates to the jobDetailsTabContainerScreen when the action is triggered.
  onTapSettings(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.jobDetailsTabContainerScreen);
  }

  /// Navigates to the previous screen.
  onTapImage(BuildContext context) {
    NavigatorService.goBack();
  }
}
