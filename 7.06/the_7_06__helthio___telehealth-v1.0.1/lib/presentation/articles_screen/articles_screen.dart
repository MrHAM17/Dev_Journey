import '../articles_screen/widgets/eightynine_item_widget.dart';
import '../articles_screen/widgets/frametwentyfour_item_widget.dart';
import '../articles_screen/widgets/sixty_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_06__helthio___telehealth/core/app_export.dart';
import 'package:the_7_06__helthio___telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_06__helthio___telehealth/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_7_06__helthio___telehealth/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_06__helthio___telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_06__helthio___telehealth/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ArticlesScreen extends StatelessWidget {
  ArticlesScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 23.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 4.h, right: 24.h),
                                  child: CustomSearchView(
                                      controller: searchController,
                                      hintText: "Search articles, news",
                                      alignment: Alignment.centerLeft))),
                          SizedBox(height: 28.v),
                          _buildPopularArticles(context),
                          SizedBox(height: 27.v),
                          _buildTrendingArticles(context),
                          SizedBox(height: 26.v),
                          _buildRelatedArticles2(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.v, bottom: 8.v)),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Articles"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconChevronLeftOnprimary24x24,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildPopularArticles(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Popular Articles", style: theme.textTheme.titleMedium),
          SizedBox(height: 10.v),
          Wrap(
              runSpacing: 5.v,
              spacing: 5.h,
              children: List<Widget>.generate(
                  3, (index) => FrametwentyfourItemWidget()))
        ]));
  }

  /// Section Widget
  Widget _buildTrendingArticles(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 4.h, right: 24.h),
          child: _buildRelatedArticles(context,
              relatedArticles: "Trending Articles", seeAll: "See all")),
      SizedBox(height: 10.v),
      SizedBox(
          height: 219.v,
          child: ListView.separated(
              padding: EdgeInsets.only(left: 4.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 15.h);
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return EightynineItemWidget();
              }))
    ]);
  }

  /// Section Widget
  Widget _buildRelatedArticles2(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 4.h, right: 24.h),
          child: _buildRelatedArticles(context,
              relatedArticles: "Related Articles", seeAll: "See all")),
      SizedBox(height: 12.v),
      Padding(
          padding: EdgeInsets.only(right: 20.h),
          child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 10.v);
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return SixtyItemWidget();
              }))
    ]);
  }

  /// Common widget
  Widget _buildRelatedArticles(
    BuildContext context, {
    required String relatedArticles,
    required String seeAll,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(relatedArticles,
          style: CustomTextStyles.titleMediumBlack900
              .copyWith(color: appTheme.black900)),
      Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(seeAll,
              style: CustomTextStyles.labelLargePrimary_1
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
  }
}
