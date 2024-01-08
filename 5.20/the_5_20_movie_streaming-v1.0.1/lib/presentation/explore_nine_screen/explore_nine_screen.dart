import '../explore_nine_screen/widgets/explorenine_item_widget.dart';
import '../explore_nine_screen/widgets/specials8_item_widget.dart';
import 'models/explore_nine_model.dart';
import 'models/explorenine_item_model.dart';
import 'models/specials8_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_5_20_movie_streaming/widgets/app_bar/appbar_title_searchview.dart';
import 'package:the_5_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';
import 'provider/explore_nine_provider.dart';

class ExploreNineScreen extends StatefulWidget {
  const ExploreNineScreen({Key? key}) : super(key: key);

  @override
  ExploreNineScreenState createState() => ExploreNineScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ExploreNineProvider(), child: ExploreNineScreen());
  }
}

class ExploreNineScreenState extends State<ExploreNineScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 34.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(right: 16.h),
                                  child: _buildFrameSixty(context,
                                      action: "lbl_discover_movie".tr,
                                      more: "lbl_more".tr)),
                              SizedBox(height: 20.v),
                              _buildHeroCard(context),
                              SizedBox(height: 26.v),
                              Text("msg_categories_you_like".tr,
                                  style: theme.textTheme.titleSmall),
                              SizedBox(height: 17.v),
                              _buildSpecials(context),
                              SizedBox(height: 25.v),
                              Padding(
                                  padding: EdgeInsets.only(right: 16.h),
                                  child: _buildFrameSixty(context,
                                      action: "lbl_drama".tr,
                                      more: "lbl_more".tr)),
                              SizedBox(height: 17.v),
                              _buildExploreNine(context)
                            ]))))));
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
        title: Selector<ExploreNineProvider, TextEditingController?>(
            selector: (context, provider) => provider.searchController,
            builder: (context, searchController, child) {
              return AppbarTitleSearchview(
                  margin: EdgeInsets.only(left: 12.h),
                  hintText: "lbl_search_movie".tr,
                  controller: searchController);
            }));
  }

  /// Section Widget
  Widget _buildHeroCard(BuildContext context) {
    return SizedBox(
        height: 300.v,
        width: 328.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgHeroCardImage1,
              height: 300.v,
              width: 328.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, bottom: 16.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_moonlight".tr,
                            style: theme.textTheme.headlineSmall),
                        SizedBox(height: 9.v),
                        Row(children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text("lbl_sub_label".tr,
                                  style:
                                      CustomTextStyles.bodySmallWhiteA700_1)),
                          Container(
                              height: 3.adaptSize,
                              width: 3.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 8.h, top: 6.v, bottom: 6.v),
                              decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(1.h))),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text("lbl_4_5".tr,
                                  style:
                                      CustomTextStyles.bodySmallWhiteA700_1)),
                          CustomImageView(
                              imagePath: ImageConstant.imgSignal,
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 3.h, top: 3.v, bottom: 4.v))
                        ])
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildSpecials(BuildContext context) {
    return SizedBox(
        height: 60.v,
        child:
            Consumer<ExploreNineProvider>(builder: (context, provider, child) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: provider.exploreNineModelObj.specials8ItemList.length,
              itemBuilder: (context, index) {
                Specials8ItemModel model =
                    provider.exploreNineModelObj.specials8ItemList[index];
                return Specials8ItemWidget(model, onTapImgDrama: () {
                  onTapImgDrama(context);
                });
              });
        }));
  }

  /// Section Widget
  Widget _buildExploreNine(BuildContext context) {
    return Consumer<ExploreNineProvider>(builder: (context, provider, child) {
      return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 223.v,
              crossAxisCount: 3,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.h),
          physics: NeverScrollableScrollPhysics(),
          itemCount: provider.exploreNineModelObj.explorenineItemList.length,
          itemBuilder: (context, index) {
            ExplorenineItemModel model =
                provider.exploreNineModelObj.explorenineItemList[index];
            return ExplorenineItemWidget(model, onTapMovieCard: () {
              onTapMovieCard(context);
            });
          });
    });
  }

  /// Common widget
  Widget _buildFrameSixty(
    BuildContext context, {
    required String action,
    required String more,
  }) {
    return Row(children: [
      Text(action,
          style:
              theme.textTheme.titleSmall!.copyWith(color: appTheme.whiteA700)),
      Spacer(),
      Text(more,
          style: CustomTextStyles.bodySmallWhiteA700_1
              .copyWith(color: appTheme.whiteA700)),
      CustomImageView(
          imagePath: ImageConstant.imgIconPrimary,
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(left: 5.h))
    ]);
  }

  /// Navigates to the seeMoreSixScreen when the action is triggered.
  onTapImgDrama(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.seeMoreSixScreen);
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.detailPageSevenScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
