import '../home_screen/widgets/framethirtysix_item_widget.dart';
import '../home_screen/widgets/stories_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/framethirtysix_item_model.dart';
import 'models/home_model.dart';
import 'models/stories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_05_blog_app/core/app_export.dart';
import 'package:the_3_05_blog_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_3_05_blog_app/widgets/app_bar/appbar_title.dart';
import 'package:the_3_05_blog_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_3_05_blog_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 22.v),
                child: Column(children: [
                  _buildFrameThirtySix(context),
                  SizedBox(height: 18.v),
                  Opacity(opacity: 0.5, child: Divider()),
                  SizedBox(height: 18.v),
                  _buildThirtySix(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgMegaphone,
            margin: EdgeInsets.only(left: 20.h, top: 16.v, bottom: 15.v)),
        title: AppbarTitle(
            text: "lbl_home".tr, margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgFrame11,
              margin: EdgeInsets.only(left: 20.h, top: 16.v, right: 15.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgRewind,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 35.h))
        ]);
  }

  /// Section Widget
  Widget _buildFrameThirtySix(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 125.v,
            child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                selector: (state) => state.homeModelObj,
                builder: (context, homeModelObj) {
                  return ListView.separated(
                      padding: EdgeInsets.only(left: 16.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 16.h);
                      },
                      itemCount:
                          homeModelObj?.framethirtysixItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        FramethirtysixItemModel model =
                            homeModelObj?.framethirtysixItemList[index] ??
                                FramethirtysixItemModel();
                        return FramethirtysixItemWidget(model);
                      });
                })));
  }

  /// Section Widget
  Widget _buildThirtySix(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_top_stories".tr,
              style: CustomTextStyles.titleSmallBlack900),
          SizedBox(height: 20.v),
          BlocSelector<HomeBloc, HomeState, HomeModel?>(
              selector: (state) => state.homeModelObj,
              builder: (context, homeModelObj) {
                return ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Opacity(
                          opacity: 0.5,
                          child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.5.v),
                              child: SizedBox(
                                  width: 335.h,
                                  child: Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: appTheme.gray300
                                          .withOpacity(0.53)))));
                    },
                    itemCount: homeModelObj?.storiesItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      StoriesItemModel model =
                          homeModelObj?.storiesItemList[index] ??
                              StoriesItemModel();
                      return StoriesItemWidget(model);
                    });
              })
        ]));
  }
}