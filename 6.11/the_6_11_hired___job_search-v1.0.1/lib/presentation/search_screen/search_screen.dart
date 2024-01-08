import '../search_screen/widgets/search_item_widget.dart';
import 'models/search_item_model.dart';
import 'notifier/search_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_11_hired___job_search/core/app_export.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_11_hired___job_search/widgets/custom_search_view.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

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
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 30.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Column(children: [
                          Consumer(builder: (context, ref, _) {
                            return CustomSearchView(
                                controller:
                                    ref.watch(searchNotifier).searchController,
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
    return Consumer(builder: (context, ref, _) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 12.v);
          },
          itemCount:
              ref.watch(searchNotifier).searchModelObj?.searchItemList.length ??
                  0,
          itemBuilder: (context, index) {
            SearchItemModel model = ref
                    .watch(searchNotifier)
                    .searchModelObj
                    ?.searchItemList[index] ??
                SearchItemModel();
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

  /// Navigates back to the previous screen.
  onTapImage(BuildContext context) {
    NavigatorService.goBack();
  }
}
