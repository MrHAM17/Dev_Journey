import '../experience_setting_screen/widgets/experiencesetting_item_widget.dart';
import 'bloc/experience_setting_bloc.dart';
import 'models/experience_setting_model.dart';
import 'models/experiencesetting_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_11_hired___job_search/core/app_export.dart';
import 'package:the_3_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_3_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_3_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';
import 'package:the_3_11_hired___job_search/widgets/custom_elevated_button.dart';
import 'package:the_3_11_hired___job_search/widgets/custom_icon_button.dart';

class ExperienceSettingScreen extends StatelessWidget {
  const ExperienceSettingScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ExperienceSettingBloc>(
        create: (context) => ExperienceSettingBloc(ExperienceSettingState(
            experienceSettingModelObj: ExperienceSettingModel()))
          ..add(ExperienceSettingInitialEvent()),
        child: ExperienceSettingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 28.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, right: 24.h, bottom: 5.v),
                              child: Column(children: [
                                _buildExperience1(context),
                                SizedBox(height: 37.v),
                                CustomElevatedButton(
                                    text: "msg_add_new_position".tr,
                                    onPressed: () {
                                      onTapAddNewPosition(context);
                                    }),
                                SizedBox(height: 32.v),
                                _buildEducation2(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildAddNewEducation(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 51.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 14.v),
            onTap: () {
              onTapArrowBack(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_experience".tr));
  }

  /// Section Widget
  Widget _buildExperience1(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildEducation(context, education: "lbl_experience".tr,
                  onTapEditSquare: () {
                onTapEditSquare(context);
              }),
              SizedBox(height: 15.v),
              BlocSelector<ExperienceSettingBloc, ExperienceSettingState,
                      ExperienceSettingModel?>(
                  selector: (state) => state.experienceSettingModelObj,
                  builder: (context, experienceSettingModelObj) {
                    return ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return Padding(
                              padding: EdgeInsets.symmetric(vertical: 11.5.v),
                              child: SizedBox(
                                  width: 295.h,
                                  child: Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: appTheme.gray300)));
                        },
                        itemCount: experienceSettingModelObj
                                ?.experiencesettingItemList.length ??
                            0,
                        itemBuilder: (context, index) {
                          ExperiencesettingItemModel model =
                              experienceSettingModelObj
                                      ?.experiencesettingItemList[index] ??
                                  ExperiencesettingItemModel();
                          return ExperiencesettingItemWidget(model);
                        });
                  })
            ]));
  }

  /// Section Widget
  Widget _buildEducation2(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildEducation(context, education: "lbl_education".tr),
              SizedBox(height: 24.v),
              Padding(
                  padding: EdgeInsets.only(right: 83.h),
                  child: Row(children: [
                    CustomIconButton(
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgFrame162724)),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(left: 12.h, top: 5.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("msg_university_of_oxford".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold),
                                  SizedBox(height: 6.v),
                                  Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 1.v),
                                        child: Text("msg_computer_science".tr,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, top: 1.v),
                                        child: Text("lbl2".tr,
                                            style: theme.textTheme.labelLarge)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text("lbl_2019".tr,
                                            style: theme.textTheme.labelLarge))
                                  ])
                                ])))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildAddNewEducation(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_add_new_education".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 55.v),
        onPressed: () {
          onTapAddNewEducation(context);
        });
  }

  /// Common widget
  Widget _buildEducation(
    BuildContext context, {
    required String education,
    Function? onTapEditSquare,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(education,
              style: CustomTextStyles.titleMediumBold_1
                  .copyWith(color: theme.colorScheme.primary))),
      CustomImageView(
          imagePath: ImageConstant.imgEditSquarePrimary,
          height: 24.adaptSize,
          width: 24.adaptSize,
          onTap: () {
            onTapEditSquare!.call();
          })
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowBack(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the newPositionScreen when the action is triggered.
  onTapEditSquare(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.newPositionScreen,
    );
  }

  /// Navigates to the newPositionScreen when the action is triggered.
  onTapAddNewPosition(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.newPositionScreen,
    );
  }

  /// Navigates to the addNewEducationScreen when the action is triggered.
  onTapAddNewEducation(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addNewEducationScreen,
    );
  }
}