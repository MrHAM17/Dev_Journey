import '../dashboard_page/widgets/specials1_item_widget.dart';
import '../dashboard_page/widgets/specials2_item_widget.dart';
import '../dashboard_page/widgets/specials3_item_widget.dart';
import '../dashboard_page/widgets/specials4_item_widget.dart';
import '../dashboard_page/widgets/specials5_item_widget.dart';
import '../dashboard_page/widgets/specials_item_widget.dart';
import 'models/specials1_item_model.dart';
import 'models/specials2_item_model.dart';
import 'models/specials3_item_model.dart';
import 'models/specials4_item_model.dart';
import 'models/specials5_item_model.dart';
import 'models/specials_item_model.dart';
import 'notifier/dashboard_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_20_movie_streaming/core/app_export.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/appbar_title.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';

class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends ConsumerState<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 16.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildHeroCard(context),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_special_for_you".tr,
                                      style: CustomTextStyles
                                          .titleSmallSemiBold))),
                          SizedBox(height: 17.v),
                          _buildSpecials(context),
                          SizedBox(height: 27.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_upcoming_movies".tr,
                                      style: CustomTextStyles
                                          .titleSmallSemiBold))),
                          SizedBox(height: 17.v),
                          _buildSpecials1(context),
                          SizedBox(height: 24.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_featured".tr,
                                      style: CustomTextStyles
                                          .titleSmallSemiBold))),
                          SizedBox(height: 18.v),
                          _buildSpecials2(context),
                          SizedBox(height: 27.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_upcoming_movies".tr,
                                      style: CustomTextStyles
                                          .titleSmallSemiBold))),
                          SizedBox(height: 17.v),
                          _buildSpecials3(context),
                          SizedBox(height: 25.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_categories".tr,
                                      style: CustomTextStyles
                                          .titleSmallSemiBold))),
                          SizedBox(height: 17.v),
                          _buildSpecials4(context),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_special_for_you".tr,
                                      style: CustomTextStyles
                                          .titleSmallSemiBold))),
                          SizedBox(height: 17.v),
                          _buildSpecials5(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_nons".tr, margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconOnprimarycontainer,
              margin: EdgeInsets.only(left: 16.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconOnprimarycontainer24x24,
              margin: EdgeInsets.symmetric(horizontal: 16.h))
        ]);
  }

  /// Section Widget
  Widget _buildHeroCard(BuildContext context) {
    return SizedBox(
        height: 300.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgHeroCardImage,
              height: 300.v,
              width: 360.h,
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
        height: 177.v,
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              padding: EdgeInsets.only(left: 16.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: ref
                      .watch(dashboardNotifier)
                      .dashboardModelObj
                      ?.specialsItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                SpecialsItemModel model = ref
                        .watch(dashboardNotifier)
                        .dashboardModelObj
                        ?.specialsItemList[index] ??
                    SpecialsItemModel();
                return SpecialsItemWidget(model, onTapMovieCard: () {
                  onTapMovieCard(context);
                });
              });
        }));
  }

  /// Section Widget
  Widget _buildSpecials1(BuildContext context) {
    return SizedBox(
        height: 185.v,
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              padding: EdgeInsets.only(left: 16.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: ref
                      .watch(dashboardNotifier)
                      .dashboardModelObj
                      ?.specials1ItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                Specials1ItemModel model = ref
                        .watch(dashboardNotifier)
                        .dashboardModelObj
                        ?.specials1ItemList[index] ??
                    Specials1ItemModel();
                return Specials1ItemWidget(model, onTapMovieCard: () {
                  onTapMovieCard(context);
                });
              });
        }));
  }

  /// Section Widget
  Widget _buildSpecials2(BuildContext context) {
    return SizedBox(
        height: 177.v,
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              padding: EdgeInsets.only(left: 16.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: ref
                      .watch(dashboardNotifier)
                      .dashboardModelObj
                      ?.specials2ItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                Specials2ItemModel model = ref
                        .watch(dashboardNotifier)
                        .dashboardModelObj
                        ?.specials2ItemList[index] ??
                    Specials2ItemModel();
                return Specials2ItemWidget(model, onTapMovieCard: () {
                  onTapMovieCard(context);
                });
              });
        }));
  }

  /// Section Widget
  Widget _buildSpecials3(BuildContext context) {
    return SizedBox(
        height: 196.v,
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              padding: EdgeInsets.only(left: 16.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: ref
                      .watch(dashboardNotifier)
                      .dashboardModelObj
                      ?.specials3ItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                Specials3ItemModel model = ref
                        .watch(dashboardNotifier)
                        .dashboardModelObj
                        ?.specials3ItemList[index] ??
                    Specials3ItemModel();
                return Specials3ItemWidget(model, onTapMovieCard: () {
                  onTapMovieCard(context);
                });
              });
        }));
  }

  /// Section Widget
  Widget _buildSpecials4(BuildContext context) {
    return SizedBox(
        height: 60.v,
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              padding: EdgeInsets.only(left: 16.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: ref
                      .watch(dashboardNotifier)
                      .dashboardModelObj
                      ?.specials4ItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                Specials4ItemModel model = ref
                        .watch(dashboardNotifier)
                        .dashboardModelObj
                        ?.specials4ItemList[index] ??
                    Specials4ItemModel();
                return Specials4ItemWidget(model, onTapImgDrama: () {
                  onTapImgDrama(context);
                });
              });
        }));
  }

  /// Section Widget
  Widget _buildSpecials5(BuildContext context) {
    return SizedBox(
        height: 177.v,
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              padding: EdgeInsets.only(left: 16.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: ref
                      .watch(dashboardNotifier)
                      .dashboardModelObj
                      ?.specials5ItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                Specials5ItemModel model = ref
                        .watch(dashboardNotifier)
                        .dashboardModelObj
                        ?.specials5ItemList[index] ??
                    Specials5ItemModel();
                return Specials5ItemWidget(model, onTapMovieCard: () {
                  onTapMovieCard(context);
                });
              });
        }));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }

  /// Navigates to the seeMoreSixScreen when the action is triggered.
  onTapImgDrama(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.seeMoreSixScreen);
  }
}
