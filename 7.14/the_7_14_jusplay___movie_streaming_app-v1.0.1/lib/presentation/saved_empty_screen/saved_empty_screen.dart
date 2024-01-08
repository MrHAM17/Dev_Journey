import 'package:flutter/material.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/presentation/downloaded_page/downloaded_page.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/presentation/home_recently_watched_page/home_recently_watched_page.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/presentation/profile_page/profile_page.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/presentation/saved_page/saved_page.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/presentation/search_page/search_page.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/custom_bottom_bar.dart';

class SavedEmptyScreen extends StatelessWidget {
  SavedEmptyScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 58.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: appTheme.gray400,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder92,
                ),
                child: Container(
                  height: 184.adaptSize,
                  width: 184.adaptSize,
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder92,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Opacity(
                        opacity: 0.4,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgVector115,
                          height: 153.v,
                          width: 184.h,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 99.v,
                          width: 100.h,
                          margin: EdgeInsets.only(right: 34.h),
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 99.v,
                                  width: 100.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.yellow700,
                                    borderRadius: BorderRadius.circular(
                                      10.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  height: 99.v,
                                  width: 88.h,
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 99.v,
                                          width: 50.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.orange400,
                                            borderRadius:
                                                BorderRadius.horizontal(
                                              right: Radius.circular(10.h),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 19.v),
                                          child: Container(
                                            height: 5.v,
                                            width: 76.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.amberA700,
                                            ),
                                            child: ClipRRect(
                                              child: LinearProgressIndicator(
                                                value: 0.5,
                                                backgroundColor:
                                                    appTheme.amberA700,
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  appTheme.amber800,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 33.v),
                                          child: Container(
                                            height: 5.v,
                                            width: 76.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.amberA700,
                                            ),
                                            child: ClipRRect(
                                              child: LinearProgressIndicator(
                                                value: 0.5,
                                                backgroundColor:
                                                    appTheme.amberA700,
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  appTheme.amber800,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          height: 15.v,
                                          width: 31.h,
                                          margin: EdgeInsets.only(top: 28.v),
                                          decoration: BoxDecoration(
                                            color: appTheme.amberA700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup427318792,
                        height: 119.v,
                        width: 123.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 22.h),
                      ),
                      Opacity(
                        opacity: 0.12,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgRectangle12115,
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            left: 28.h,
                            top: 53.v,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.12,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgRectangle12119,
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(
                            top: 14.v,
                            right: 49.h,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.12,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgRectangle12118,
                          height: 25.adaptSize,
                          width: 25.adaptSize,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                            left: 75.h,
                            bottom: 72.v,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.12,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgRectangle12119,
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                            left: 20.h,
                            bottom: 37.v,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              Text(
                "Not Save",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 8.v),
              Text(
                "Let's find and download your favorite video",
                style: CustomTextStyles.bodySmallPrimaryContainer,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(
          children: [
            AppbarSubtitle(
              text: "Mark All",
              margin: EdgeInsets.symmetric(vertical: 4.v),
            ),
            AppbarTitle(
              text: "Saved",
              margin: EdgeInsets.only(left: 100.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarSubtitleOne(
          text: "Delete",
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 15.v,
          ),
        ),
      ],
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
        return AppRoutes.homeRecentlyWatchedPage;
      case BottomBarEnum.Search:
        return AppRoutes.searchPage;
      case BottomBarEnum.Saved:
        return AppRoutes.savedPage;
      case BottomBarEnum.Downloads:
        return AppRoutes.downloadedPage;
      case BottomBarEnum.Me:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeRecentlyWatchedPage:
        return HomeRecentlyWatchedPage();
      case AppRoutes.searchPage:
        return SearchPage();
      case AppRoutes.savedPage:
        return SavedPage();
      case AppRoutes.downloadedPage:
        return DownloadedPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
