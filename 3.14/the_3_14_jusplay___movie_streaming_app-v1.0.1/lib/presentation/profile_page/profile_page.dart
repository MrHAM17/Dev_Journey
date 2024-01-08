import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
        create: (context) =>
            ProfileBloc(ProfileState(profileModelObj: ProfileModel()))
              ..add(ProfileInitialEvent()),
        child: ProfilePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 9.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse414,
                        height: 84.adaptSize,
                        width: 84.adaptSize,
                        radius: BorderRadius.circular(42.h)),
                    SizedBox(height: 15.v),
                    Text("lbl_antonio_renders".tr,
                        style: CustomTextStyles.titleMediumSemiBold),
                    SizedBox(height: 3.v),
                    Text("msg_renders_antonio".tr,
                        style: CustomTextStyles.labelLargePrimaryContainer),
                    SizedBox(height: 22.v),
                    _buildFrame1(context),
                    SizedBox(height: 14.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: _buildFrame(context,
                            user: ImageConstant.imgFrame427319082,
                            history: "lbl_notification".tr, onTapFrame: () {
                          onTapFrame1(context);
                        })),
                    SizedBox(height: 24.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: _buildFrame(context,
                            user: ImageConstant.imgUser,
                            history: "lbl_history".tr, onTapFrame: () {
                          onTapFrame2(context);
                        })),
                    SizedBox(height: 24.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: _buildFrame(context,
                            user: ImageConstant.imgThumbsUp,
                            history: "lbl_my_subscription".tr)),
                    SizedBox(height: 24.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: _buildFrame(context,
                            user: ImageConstant.imgSearch,
                            history: "lbl_setting".tr, onTapFrame: () {
                          onTapFrame3(context);
                        })),
                    SizedBox(height: 24.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: _buildFrame(context,
                            user: ImageConstant.imgForward,
                            history: "lbl_logout".tr)),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 52.v,
        centerTitle: true,
        title: AppbarTitle(text: "lbl_my_profile".tr));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFrame(context);
        },
        child: Container(
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.cardBg
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgLock,
                  height: 40.adaptSize,
                  width: 40.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 11.v, bottom: 10.v),
                  child: Text("lbl_my_profile".tr,
                      style: theme.textTheme.labelLarge)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 12.v))
            ])));
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String user,
    required String history,
    Function? onTapFrame,
  }) {
    return GestureDetector(
        onTap: () {
          onTapFrame!.call();
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: user, height: 40.adaptSize, width: 40.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 15.h, top: 11.v, bottom: 10.v),
              child: Text(history,
                  style: theme.textTheme.labelLarge!
                      .copyWith(color: appTheme.whiteA700))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(top: 12.v, bottom: 10.v))
        ]));
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.editProfileScreen,
    );
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapFrame1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationScreen,
    );
  }

  /// Navigates to the historyScreen when the action is triggered.
  onTapFrame2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.historyScreen,
    );
  }

  /// Navigates to the settingScreen when the action is triggered.
  onTapFrame3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingScreen,
    );
  }
}
