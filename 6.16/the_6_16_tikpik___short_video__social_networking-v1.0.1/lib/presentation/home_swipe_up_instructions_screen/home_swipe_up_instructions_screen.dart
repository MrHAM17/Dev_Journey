import 'notifier/home_swipe_up_instructions_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/all_activity_page/all_activity_page.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/home_page/home_page.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/profile_two_page/profile_two_page.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/trending_sounds_tab_container_page/trending_sounds_tab_container_page.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/widgets/custom_bottom_bar.dart';

class HomeSwipeUpInstructionsScreen extends ConsumerStatefulWidget {
  const HomeSwipeUpInstructionsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeSwipeUpInstructionsScreenState createState() =>
      HomeSwipeUpInstructionsScreenState();
}

class HomeSwipeUpInstructionsScreenState
    extends ConsumerState<HomeSwipeUpInstructionsScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onErrorContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgAutoLayoutHorizontal344x378,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: 751.v,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 23.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                _buildAutoLayoutHorizontal(context),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 64.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "msg_swipe_up_to_see".tr,
                          style: CustomTextStyles.titleMediumOnErrorContainer,
                        ),
                        SizedBox(height: 31.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorCyanA400,
                          height: 169.v,
                          width: 187.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 41.v,
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgCategoriesLive,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 6.v,
          bottom: 6.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 6.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 180.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 60.adaptSize,
                        width: 60.adaptSize,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse60x60,
                              height: 60.adaptSize,
                              width: 60.adaptSize,
                              radius: BorderRadius.circular(
                                30.h,
                              ),
                              alignment: Alignment.center,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgClose,
                              height: 15.adaptSize,
                              width: 15.adaptSize,
                              alignment: Alignment.bottomRight,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          top: 7.v,
                          bottom: 7.v,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "lbl_jenny_wilson".tr,
                              style: CustomTextStyles
                                  .titleMediumOnErrorContainer_2,
                            ),
                            SizedBox(height: 5.v),
                            Text(
                              "msg_actress_singer".tr,
                              style: CustomTextStyles.titleSmallGray300,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 21.v),
                  SizedBox(
                    width: 266.h,
                    child: Text(
                      "msg_hi_everyone_in".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallOnErrorContainer_1
                          .copyWith(
                        height: 1.40,
                      ),
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPlay,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCategoriesMusic,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 8.h,
                          top: 4.v,
                          bottom: 4.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          top: 5.v,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "msg_favorite_girl_by".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 74.h),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCategoriesReport,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                SizedBox(height: 24.v),
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconlyBoldHeart,
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "lbl_225_9k".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
                SizedBox(height: 23.v),
                CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                ),
                SizedBox(height: 5.v),
                Text(
                  "lbl_24_8k".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 23.v),
                CustomImageView(
                  imagePath: ImageConstant.imgBookmark,
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                ),
                SizedBox(height: 5.v),
                Text(
                  "lbl_15_6k".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 23.v),
                CustomImageView(
                  imagePath: ImageConstant.imgCategoriesShare,
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                ),
                SizedBox(height: 5.v),
                Text(
                  "lbl_20_7k".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Discover:
        return AppRoutes.trendingSoundsTabContainerPage;
      case BottomBarEnum.Inbox:
        return AppRoutes.allActivityPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileTwoPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.trendingSoundsTabContainerPage:
        return TrendingSoundsTabContainerPage();
      case AppRoutes.allActivityPage:
        return AllActivityPage();
      case AppRoutes.profileTwoPage:
        return ProfileTwoPage();
      default:
        return DefaultWidget();
    }
  }
}
