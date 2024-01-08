import 'models/add_option_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/presentation/all_activity_page/all_activity_page.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/presentation/home_page/home_page.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/presentation/profile_two_page/profile_two_page.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/presentation/trending_sounds_tab_container_page/trending_sounds_tab_container_page.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_bottom_bar.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_text_form_field.dart';
import 'provider/add_option_provider.dart';

class AddOptionScreen extends StatefulWidget {
  const AddOptionScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AddOptionScreenState createState() => AddOptionScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddOptionProvider(),
      child: AddOptionScreen(),
    );
  }
}

class AddOptionScreenState extends State<AddOptionScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 792.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(24.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildAutoLayoutHorizontal2(context),
                      Spacer(),
                      _buildAutoLayoutHorizontal4(context),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 882.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgAutoLayoutHorizontal344x378,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(24.h, 1.v, 24.h, 113.v),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildAutoLayoutHorizontal5(context),
                              Spacer(),
                              _buildAutoLayoutHorizontal6(context),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 134.h,
                            vertical: 38.v,
                          ),
                          decoration: AppDecoration.fillOnPrimary,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Spacer(),
                              Container(
                                height: 145.v,
                                width: 160.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 28.h,
                                  vertical: 25.v,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: fs.Svg(
                                      ImageConstant.imgAutoLayoutVertical,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 21.v),
                                      child: _buildAutoLayoutHorizontal1(
                                        context,
                                        live: "lbl_posts".tr,
                                        iconlyCurvedVideo:
                                            ImageConstant.imgIconlyCurvedPlay,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 21.v),
                                      child: _buildAutoLayoutHorizontal1(
                                        context,
                                        live: "lbl_live".tr,
                                        iconlyCurvedVideo:
                                            ImageConstant.imgIconlyCurvedVideo,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12.v),
                              Container(
                                height: 40.v,
                                width: 66.h,
                                padding: EdgeInsets.symmetric(horizontal: 13.h),
                                decoration: AppDecoration.fillPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder22,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgIconlyCurvedPlus,
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  alignment: Alignment.center,
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
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal2(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgCategoriesLive,
          height: 28.adaptSize,
          width: 28.adaptSize,
          margin: EdgeInsets.only(
            top: 5.v,
            bottom: 6.v,
          ),
        ),
        Spacer(),
        SizedBox(
          height: 39.v,
          width: 258.h,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Selector<AddOptionProvider, TextEditingController?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.stateInactiveController,
                builder: (context, stateInactiveController, child) {
                  return CustomTextFormField(
                    width: 160.h,
                    controller: stateInactiveController,
                    hintText: "lbl_following".tr,
                    alignment: Alignment.centerLeft,
                    contentPadding: EdgeInsets.symmetric(horizontal: 30.h),
                    borderDecoration: TextFormFieldStyleHelper.underLineGray,
                    filled: false,
                  );
                },
              ),
              Selector<AddOptionProvider, TextEditingController?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.stateInactiveController1,
                builder: (context, stateInactiveController1, child) {
                  return CustomTextFormField(
                    width: 160.h,
                    controller: stateInactiveController1,
                    hintText: "lbl_friends".tr,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.topRight,
                    contentPadding: EdgeInsets.symmetric(horizontal: 30.h),
                    borderDecoration: TextFormFieldStyleHelper.underLineGray,
                    filled: false,
                  );
                },
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "lbl_for_you".tr,
                        style: CustomTextStyles.titleMediumPrimarySemiBold_1,
                      ),
                      SizedBox(height: 13.v),
                      SizedBox(
                        width: 60.h,
                        child: Divider(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgRewind,
          height: 28.adaptSize,
          width: 28.adaptSize,
          margin: EdgeInsets.only(
            left: 23.h,
            top: 5.v,
            bottom: 6.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal4(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 180.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildAutoLayoutHorizontal(context),
                SizedBox(height: 21.v),
                SizedBox(
                  width: 266.h,
                  child: Text(
                    "msg_hi_everyone_in".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        CustomTextStyles.titleSmallOnErrorContainer_1.copyWith(
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
          child: _buildAutoLayoutVertical(
            context,
            k: "lbl_225_9k".tr,
            k1: "lbl_24_8k".tr,
            k2: "lbl_15_6k".tr,
            k3: "lbl_20_7k".tr,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal5(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgCategoriesLive,
          height: 28.adaptSize,
          width: 28.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 5.v),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 26.h,
            top: 2.v,
            bottom: 14.v,
          ),
          child: Text(
            "lbl_following".tr,
            style: CustomTextStyles.titleMediumGray200,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 29.h,
            bottom: 16.v,
          ),
          child: Text(
            "lbl_friends".tr,
            style: CustomTextStyles.titleMediumGray200,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Column(
            children: [
              Text(
                "lbl_for_you".tr,
                style: CustomTextStyles.titleMediumDeeporange300,
              ),
              SizedBox(height: 12.v),
              SizedBox(
                width: 97.h,
                child: Divider(
                  color: appTheme.deepOrange300,
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgRewind,
          height: 28.adaptSize,
          width: 28.adaptSize,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 5.v,
            bottom: 5.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal6(BuildContext context) {
    return Row(
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
                            style:
                                CustomTextStyles.titleMediumOnErrorContainer_2,
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
                    style:
                        CustomTextStyles.titleSmallOnErrorContainer_1.copyWith(
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
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Row(
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
                style: CustomTextStyles.titleMediumOnErrorContainer_2,
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
    );
  }

  /// Common widget
  Widget _buildAutoLayoutVertical(
    BuildContext context, {
    required String k,
    required String k1,
    required String k2,
    required String k3,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgCategoriesReport,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        SizedBox(height: 24.v),
        CustomImageView(
          imagePath: ImageConstant.imgIconlyBoldHeart,
          height: 36.adaptSize,
          width: 36.adaptSize,
        ),
        SizedBox(height: 5.v),
        Text(
          k,
          style: theme.textTheme.labelLarge!.copyWith(
            color: theme.colorScheme.onErrorContainer,
          ),
        ),
        SizedBox(height: 23.v),
        CustomImageView(
          imagePath: ImageConstant.imgUser,
          height: 36.adaptSize,
          width: 36.adaptSize,
        ),
        SizedBox(height: 5.v),
        Text(
          k1,
          style: theme.textTheme.labelLarge!.copyWith(
            color: theme.colorScheme.onErrorContainer,
          ),
        ),
        SizedBox(height: 23.v),
        CustomImageView(
          imagePath: ImageConstant.imgBookmark,
          height: 36.adaptSize,
          width: 36.adaptSize,
        ),
        SizedBox(height: 5.v),
        Text(
          k2,
          style: theme.textTheme.labelLarge!.copyWith(
            color: theme.colorScheme.onErrorContainer,
          ),
        ),
        SizedBox(height: 23.v),
        CustomImageView(
          imagePath: ImageConstant.imgCategoriesShare,
          height: 36.adaptSize,
          width: 36.adaptSize,
        ),
        SizedBox(height: 5.v),
        Text(
          k3,
          style: theme.textTheme.labelLarge!.copyWith(
            color: theme.colorScheme.onErrorContainer,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildAutoLayoutHorizontal1(
    BuildContext context, {
    required String live,
    required String iconlyCurvedVideo,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 3.v,
            bottom: 2.v,
          ),
          child: Text(
            live,
            style: CustomTextStyles.titleMediumErrorContainerSemiBold.copyWith(
              color: theme.colorScheme.errorContainer,
            ),
          ),
        ),
        CustomImageView(
          imagePath: iconlyCurvedVideo,
          height: 28.adaptSize,
          width: 28.adaptSize,
          margin: EdgeInsets.only(left: 41.h),
        ),
      ],
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
