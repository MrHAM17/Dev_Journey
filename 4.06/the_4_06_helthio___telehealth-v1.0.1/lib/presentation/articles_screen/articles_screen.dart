import '../articles_screen/widgets/eightynine_item_widget.dart';
import '../articles_screen/widgets/frametwentyfour_item_widget.dart';
import '../articles_screen/widgets/sixty_item_widget.dart';
import 'controller/articles_controller.dart';
import 'models/eightynine_item_model.dart';
import 'models/frametwentyfour_item_model.dart';
import 'models/sixty_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_06_helthio___telehealth/core/app_export.dart';
import 'package:the_4_06_helthio___telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_4_06_helthio___telehealth/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_4_06_helthio___telehealth/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_4_06_helthio___telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:the_4_06_helthio___telehealth/widgets/custom_search_view.dart';

class ArticlesScreen extends GetWidget<ArticlesController> {
  const ArticlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
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
                                      controller: controller.searchController,
                                      hintText: "msg_search_articles".tr,
                                      alignment: Alignment.centerLeft))),
                          SizedBox(height: 28.v),
                          _buildPopularArticles(),
                          SizedBox(height: 27.v),
                          _buildTrendingArticles(),
                          SizedBox(height: 26.v),
                          _buildRelatedArticles2()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.v, bottom: 8.v)),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_articles".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconChevronLeftOnprimary24x24,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildPopularArticles() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_popular_articles".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 10.v),
          Obx(() => Wrap(
              runSpacing: 5.v,
              spacing: 5.h,
              children: List<Widget>.generate(
                  controller.articlesModelObj.value.frametwentyfourItemList
                      .value.length, (index) {
                FrametwentyfourItemModel model = controller.articlesModelObj
                    .value.frametwentyfourItemList.value[index];
                return FrametwentyfourItemWidget(model);
              })))
        ]));
  }

  /// Section Widget
  Widget _buildTrendingArticles() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 4.h, right: 24.h),
          child: _buildRelatedArticles(
              relatedArticles: "msg_trending_articles".tr,
              seeAll: "lbl_see_all".tr)),
      SizedBox(height: 10.v),
      SizedBox(
          height: 219.v,
          child: Obx(() => ListView.separated(
              padding: EdgeInsets.only(left: 4.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 15.h);
              },
              itemCount: controller
                  .articlesModelObj.value.eightynineItemList.value.length,
              itemBuilder: (context, index) {
                EightynineItemModel model = controller
                    .articlesModelObj.value.eightynineItemList.value[index];
                return EightynineItemWidget(model);
              })))
    ]);
  }

  /// Section Widget
  Widget _buildRelatedArticles2() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 4.h, right: 24.h),
          child: _buildRelatedArticles(
              relatedArticles: "msg_related_articles".tr,
              seeAll: "lbl_see_all".tr)),
      SizedBox(height: 12.v),
      Padding(
          padding: EdgeInsets.only(right: 20.h),
          child: Obx(() => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 10.v);
              },
              itemCount:
                  controller.articlesModelObj.value.sixtyItemList.value.length,
              itemBuilder: (context, index) {
                SixtyItemModel model = controller
                    .articlesModelObj.value.sixtyItemList.value[index];
                return SixtyItemWidget(model);
              })))
    ]);
  }

  /// Common widget
  Widget _buildRelatedArticles({
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
