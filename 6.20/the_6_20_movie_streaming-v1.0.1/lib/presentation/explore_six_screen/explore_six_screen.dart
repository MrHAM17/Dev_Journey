import '../explore_six_screen/widgets/exploresix_item_widget.dart';
import 'models/exploresix_item_model.dart';
import 'notifier/explore_six_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_20_movie_streaming/core/app_export.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';

class ExploreSixScreen extends ConsumerStatefulWidget {
  const ExploreSixScreen({Key? key}) : super(key: key);

  @override
  ExploreSixScreenState createState() => ExploreSixScreenState();
}

class ExploreSixScreenState extends ConsumerState<ExploreSixScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 28.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_explore_movies".tr,
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_find_something_you".tr,
                              style: CustomTextStyles
                                  .bodyMediumOnPrimaryContainer)),
                      SizedBox(height: 26.v),
                      _buildAction(context),
                      SizedBox(height: 17.v),
                      _buildExploreSix(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 48.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Consumer(builder: (context, ref, _) {
          return AppbarTitleSearchview(
              margin: EdgeInsets.only(left: 12.h),
              hintText: "lbl_search_movie".tr,
              controller: ref.watch(exploreSixNotifier).searchController);
        }));
  }

  /// Section Widget
  Widget _buildAction(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("lbl_action".tr, style: theme.textTheme.titleSmall),
              Spacer(),
              Text("lbl_more".tr, style: CustomTextStyles.bodySmallWhiteA700_1),
              CustomImageView(
                  imagePath: ImageConstant.imgIconPrimary,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(left: 5.h))
            ])));
  }

  /// Section Widget
  Widget _buildExploreSix(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Consumer(builder: (context, ref, _) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 223.v,
                      crossAxisCount: 3,
                      mainAxisSpacing: 16.h,
                      crossAxisSpacing: 16.h),
                  physics: BouncingScrollPhysics(),
                  itemCount: ref
                          .watch(exploreSixNotifier)
                          .exploreSixModelObj
                          ?.exploresixItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    ExploresixItemModel model = ref
                            .watch(exploreSixNotifier)
                            .exploreSixModelObj
                            ?.exploresixItemList[index] ??
                        ExploresixItemModel();
                    return ExploresixItemWidget(model, onTapMovieCard: () {
                      onTapMovieCard(context);
                    });
                  });
            })));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.detailPageSevenScreen);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
