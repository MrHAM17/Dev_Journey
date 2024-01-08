import 'package:flutter/material.dart';
import 'package:the_7_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_7_09_social_dashboards_ui_kit/presentation/home_page/home_page.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/custom_bottom_bar.dart';
import 'package:the_7_09_social_dashboards_ui_kit/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class NewPostBottomsheet extends StatelessWidget {
  NewPostBottomsheet({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Spacer(),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 28.h,
              vertical: 22.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL32,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIndicatorOnLight,
                  height: 5.v,
                  width: 38.h,
                  alignment: Alignment.center,
                ),
                SizedBox(height: 21.v),
                _buildAddVideo(
                  context,
                  addVideo: "Add Photo",
                ),
                SizedBox(height: 28.v),
                _buildAddVideo(
                  context,
                  addVideo: "Add Video",
                ),
                SizedBox(height: 28.v),
                Row(
                  children: [
                    CustomIconButton(
                      height: 38.adaptSize,
                      width: 38.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillOnPrimary,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSettingsWhiteA70038x38,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 18.h,
                        top: 11.v,
                        bottom: 9.v,
                      ),
                      child: Text(
                        "Tag a Friend",
                        style: CustomTextStyles.titleSmallBold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 28.v),
                Row(
                  children: [
                    CustomIconButton(
                      height: 38.adaptSize,
                      width: 38.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillOnPrimary,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMegaphone,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 18.h,
                        top: 10.v,
                        bottom: 10.v,
                      ),
                      child: Text(
                        "Write an Article",
                        style: CustomTextStyles.titleSmallBold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 28.v),
                Row(
                  children: [
                    CustomIconButton(
                      height: 38.adaptSize,
                      width: 38.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.outlineGray,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgNotification,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 18.h,
                        top: 11.v,
                        bottom: 9.v,
                      ),
                      child: Text(
                        "More Options",
                        style: CustomTextStyles.titleSmallBold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
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

  /// Common widget
  Widget _buildAddVideo(
    BuildContext context, {
    required String addVideo,
  }) {
    return Row(
      children: [
        CustomIconButton(
          height: 38.adaptSize,
          width: 38.adaptSize,
          padding: EdgeInsets.all(10.h),
          decoration: IconButtonStyleHelper.fillOnPrimary,
          child: CustomImageView(
            imagePath: ImageConstant.imgUpload,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 18.h,
            top: 10.v,
            bottom: 10.v,
          ),
          child: Text(
            addVideo,
            style: CustomTextStyles.titleSmallBold.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Settings:
        return AppRoutes.homePage;
      case BottomBarEnum.Calendar:
        return "/";
      case BottomBarEnum.Add:
        return "/";
      case BottomBarEnum.Message:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}
