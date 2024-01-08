import 'bloc/episode_tab_container_bloc.dart';
import 'models/episode_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/about_page/about_page.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/episode_page/episode_page.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/similiar_page/similiar_page.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/widgets/custom_elevated_button.dart';

class EpisodeTabContainerScreen extends StatefulWidget {
  const EpisodeTabContainerScreen({Key? key}) : super(key: key);

  @override
  EpisodeTabContainerScreenState createState() =>
      EpisodeTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return BlocProvider<EpisodeTabContainerBloc>(
        create: (context) => EpisodeTabContainerBloc(EpisodeTabContainerState(
            episodeTabContainerModelObj: EpisodeTabContainerModel()))
          ..add(EpisodeTabContainerInitialEvent()),
        child: EpisodeTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class EpisodeTabContainerScreenState extends State<EpisodeTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EpisodeTabContainerBloc, EpisodeTabContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: SingleChildScrollView(
                      child: Column(children: [
                    _buildImage(context),
                    SizedBox(height: 16.v),
                    _buildFrame(context),
                    SizedBox(height: 24.v),
                    SizedBox(
                        width: 343.h,
                        child: ReadMoreText("msg_aladdin_a_street2".tr,
                            trimLines: 3,
                            colorClickableText: appTheme.whiteA700,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: "lbl_read_more".tr,
                            moreStyle: CustomTextStyles
                                .bodySmallPrimaryContainer
                                .copyWith(height: 1.50),
                            lessStyle: CustomTextStyles
                                .bodySmallPrimaryContainer
                                .copyWith(height: 1.50))),
                    SizedBox(height: 21.v),
                    _buildTabview(context),
                    _buildTabBarView(context)
                  ])))));
    });
  }

  /// Section Widget
  Widget _buildImage(BuildContext context) {
    return SizedBox(
        height: 369.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 369.v,
                  width: 374.h,
                  decoration: BoxDecoration(color: appTheme.black900))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 369.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage6,
                        height: 369.v,
                        width: 375.h,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.symmetric(vertical: 7.v),
                            decoration: AppDecoration.gradientOnPrimaryToBlack,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomAppBar(
                                      height: 35.v,
                                      leadingWidth: 51.h,
                                      leading: AppbarLeadingIconbutton(
                                          imagePath: ImageConstant.imgArrowLeft,
                                          margin: EdgeInsets.only(left: 16.h),
                                          onTap: () {
                                            onTapArrowLeft(context);
                                          }),
                                      actions: [
                                        AppbarTrailingIconbutton(
                                            imagePath:
                                                ImageConstant.imgFrame427319010,
                                            margin:
                                                EdgeInsets.only(left: 16.h)),
                                        AppbarTrailingIconbutton(
                                            imagePath: ImageConstant
                                                .imgFrame427319010WhiteA700,
                                            margin: EdgeInsets.only(
                                                left: 10.h, right: 16.h))
                                      ]),
                                  SizedBox(height: 262.v),
                                  Text("msg_disney_s_aladdin".tr,
                                      style: CustomTextStyles
                                          .headlineSmallSemiBold),
                                  SizedBox(height: 1.v),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_2019".tr,
                                            style: CustomTextStyles
                                                .bodySmallPrimaryContainer),
                                        Container(
                                            height: 3.adaptSize,
                                            width: 3.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 8.h,
                                                top: 7.v,
                                                bottom: 8.v),
                                            decoration: BoxDecoration(
                                                color: theme.colorScheme
                                                    .primaryContainer,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        1.h))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.h, top: 1.v),
                                            child: Text(
                                                "msg_adventure_comedy".tr,
                                                style: CustomTextStyles
                                                    .bodySmallPrimaryContainer)),
                                        Container(
                                            height: 3.adaptSize,
                                            width: 3.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 8.h,
                                                top: 7.v,
                                                bottom: 8.v),
                                            decoration: BoxDecoration(
                                                color: theme.colorScheme
                                                    .primaryContainer,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        1.h))),
                                        Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text("lbl_2h_8m".tr,
                                                style: CustomTextStyles
                                                    .bodySmallPrimaryContainer))
                                      ])
                                ])))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomElevatedButton(
                  height: 37.v,
                  text: "lbl_play".tr,
                  margin: EdgeInsets.only(right: 8.h),
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 8.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgPlay,
                          height: 16.adaptSize,
                          width: 16.adaptSize)),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL18,
                  buttonTextStyle: theme.textTheme.titleSmall!)),
          Expanded(
              child: CustomElevatedButton(
                  height: 37.v,
                  text: "lbl_download".tr,
                  margin: EdgeInsets.only(left: 8.h),
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 8.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgDownload,
                          height: 16.adaptSize,
                          width: 16.adaptSize)),
                  buttonStyle: CustomButtonStyles.fillOnPrimaryContainerTL18,
                  buttonTextStyle: theme.textTheme.titleSmall!))
        ]));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 36.v,
        width: 312.h,
        margin: EdgeInsets.only(left: 16.h),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.primary,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            unselectedLabelColor:
                theme.colorScheme.primaryContainer.withOpacity(0.67),
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            indicatorColor: theme.colorScheme.primary,
            tabs: [
              Tab(child: Text("lbl_episode".tr)),
              Tab(child: Text("lbl_similiar".tr)),
              Tab(child: Opacity(opacity: 0.9, child: Text("lbl_about".tr)))
            ]));
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
        height: 208.v,
        child: TabBarView(
            controller: tabviewController,
            children: [EpisodePage(), SimiliarPage(), AboutPage()]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
