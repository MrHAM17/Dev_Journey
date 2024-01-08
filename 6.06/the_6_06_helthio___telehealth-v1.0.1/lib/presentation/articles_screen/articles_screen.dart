import '../articles_screen/widgets/eightynine_item_widget.dart';
import '../articles_screen/widgets/frametwentyfour_item_widget.dart';
import '../articles_screen/widgets/sixty_item_widget.dart';
import 'models/eightynine_item_model.dart';
import 'models/frametwentyfour_item_model.dart';
import 'models/sixty_item_model.dart';
import 'notifier/articles_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_06_helthio___telehealth/core/app_export.dart';
import 'package:the_6_06_helthio___telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_06_helthio___telehealth/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_6_06_helthio___telehealth/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_06_helthio___telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_06_helthio___telehealth/widgets/custom_search_view.dart';

class ArticlesScreen extends ConsumerStatefulWidget {
  const ArticlesScreen({Key? key}) : super(key: key);

  @override
  ArticlesScreenState createState() => ArticlesScreenState();
}

class ArticlesScreenState extends ConsumerState<ArticlesScreen> {
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
                                  child: Consumer(builder: (context, ref, _) {
                                    return CustomSearchView(
                                        controller: ref
                                            .watch(articlesNotifier)
                                            .searchController,
                                        hintText: "msg_search_articles".tr,
                                        alignment: Alignment.centerLeft);
                                  }))),
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
        title: AppbarSubtitleOne(text: "lbl_articles".tr),
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
          Text("msg_popular_articles".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 10.v),
          Consumer(builder: (context, ref, _) {
            return Wrap(
                runSpacing: 5.v,
                spacing: 5.h,
                children: List<Widget>.generate(
                    ref
                            .watch(articlesNotifier)
                            .articlesModelObj
                            ?.frametwentyfourItemList
                            .length ??
                        0, (index) {
                  FrametwentyfourItemModel model = ref
                          .watch(articlesNotifier)
                          .articlesModelObj
                          ?.frametwentyfourItemList[index] ??
                      FrametwentyfourItemModel();
                  return FrametwentyfourItemWidget(model,
                      onSelectedChipView1: (value) {
                    ref
                        .read(articlesNotifier.notifier)
                        .onSelectedChipView1(index, value);
                  });
                }));
          })
        ]));
  }

  /// Section Widget
  Widget _buildTrendingArticles(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 4.h, right: 24.h),
          child: _buildRelatedArticles(context,
              relatedArticles: "msg_trending_articles".tr,
              seeAll: "lbl_see_all".tr)),
      SizedBox(height: 10.v),
      SizedBox(
          height: 219.v,
          child: Consumer(builder: (context, ref, _) {
            return ListView.separated(
                padding: EdgeInsets.only(left: 4.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 15.h);
                },
                itemCount: ref
                        .watch(articlesNotifier)
                        .articlesModelObj
                        ?.eightynineItemList
                        .length ??
                    0,
                itemBuilder: (context, index) {
                  EightynineItemModel model = ref
                          .watch(articlesNotifier)
                          .articlesModelObj
                          ?.eightynineItemList[index] ??
                      EightynineItemModel();
                  return EightynineItemWidget(model);
                });
          }))
    ]);
  }

  /// Section Widget
  Widget _buildRelatedArticles2(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 4.h, right: 24.h),
          child: _buildRelatedArticles(context,
              relatedArticles: "msg_related_articles".tr,
              seeAll: "lbl_see_all".tr)),
      SizedBox(height: 12.v),
      Padding(
          padding: EdgeInsets.only(right: 20.h),
          child: Consumer(builder: (context, ref, _) {
            return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10.v);
                },
                itemCount: ref
                        .watch(articlesNotifier)
                        .articlesModelObj
                        ?.sixtyItemList
                        .length ??
                    0,
                itemBuilder: (context, index) {
                  SixtyItemModel model = ref
                          .watch(articlesNotifier)
                          .articlesModelObj
                          ?.sixtyItemList[index] ??
                      SixtyItemModel();
                  return SixtyItemWidget(model);
                });
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
