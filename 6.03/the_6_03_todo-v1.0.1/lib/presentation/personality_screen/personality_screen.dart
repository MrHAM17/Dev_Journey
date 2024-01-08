import 'notifier/personality_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_03_todo/core/app_export.dart';
import 'package:the_6_03_todo/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_03_todo/widgets/app_bar/appbar_title.dart';
import 'package:the_6_03_todo/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_03_todo/widgets/custom_elevated_button.dart';
import 'package:the_6_03_todo/widgets/custom_text_form_field.dart';

class PersonalityScreen extends ConsumerStatefulWidget {
  const PersonalityScreen({Key? key}) : super(key: key);

  @override
  PersonalityScreenState createState() => PersonalityScreenState();
}

class PersonalityScreenState extends ConsumerState<PersonalityScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 19.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 32.h, right: 32.h, bottom: 5.v),
                        child: Column(children: [
                          _buildEditProfilePic(context),
                          SizedBox(height: 50.v),
                          _buildUserName(context),
                          SizedBox(height: 18.v),
                          _buildFirstName(context),
                          SizedBox(height: 18.v),
                          _buildLastName(context),
                          SizedBox(height: 20.v),
                          _buildHobby(context),
                          SizedBox(height: 18.v),
                          _buildDateOfBirth(context),
                          SizedBox(height: 20.v),
                          _buildCountry(context),
                          SizedBox(height: 34.v),
                          CustomElevatedButton(
                              text: "lbl_change_save".tr,
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumWhiteA700,
                              onPressed: () {
                                onTapChangeSave(context);
                              })
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 32.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTitle(
              text: "lbl_personality".tr,
              margin: EdgeInsets.symmetric(horizontal: 32.h, vertical: 14.v))
        ]);
  }

  /// Section Widget
  Widget _buildEditProfilePic(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 86.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgProfileImage,
              height: 139.adaptSize,
              width: 139.adaptSize,
              radius: BorderRadius.circular(69.h)),
          SizedBox(height: 18.v),
          Opacity(
              opacity: 0.8,
              child: Padding(
                  padding: EdgeInsets.only(left: 35.h),
                  child: Text("lbl_edit_photo".tr,
                      style: CustomTextStyles.labelLargeSecondaryContainer_1)))
        ]));
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_username".tr, style: theme.textTheme.labelLarge),
      SizedBox(height: 13.v),
      Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            controller: ref.watch(personalityNotifier).userNameController,
            hintText: "lbl_adalahalcana".tr,
            hintStyle: CustomTextStyles.titleSmallOnPrimary_1);
      })
    ]);
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_first_name2".tr, style: theme.textTheme.labelLarge),
      SizedBox(height: 13.v),
      Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            controller: ref.watch(personalityNotifier).firstNameController,
            hintText: "lbl_alcanasatre".tr,
            hintStyle: CustomTextStyles.titleSmallOnPrimary_1);
      })
    ]);
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_last_name2".tr, style: theme.textTheme.labelLarge),
      SizedBox(height: 13.v),
      Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            controller: ref.watch(personalityNotifier).lastNameController,
            hintText: "lbl_fourta".tr,
            hintStyle: CustomTextStyles.titleSmallOnPrimary_1);
      })
    ]);
  }

  /// Section Widget
  Widget _buildHobby(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_hobby".tr, style: theme.textTheme.labelLarge),
      SizedBox(height: 11.v),
      Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            controller: ref.watch(personalityNotifier).hobbyController,
            hintText: "lbl_sleep".tr,
            hintStyle: CustomTextStyles.titleSmallOnPrimary_1);
      })
    ]);
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_date_of_birth".tr, style: theme.textTheme.labelLarge),
      SizedBox(height: 13.v),
      Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            controller: ref.watch(personalityNotifier).dateOfBirthController,
            hintText: "lbl_28_may_2002".tr,
            hintStyle: CustomTextStyles.titleSmallOnPrimary_1);
      })
    ]);
  }

  /// Section Widget
  Widget _buildCountry(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_country".tr, style: theme.textTheme.labelLarge),
      SizedBox(height: 11.v),
      Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            controller: ref.watch(personalityNotifier).countryController,
            hintText: "lbl_indonesian".tr,
            hintStyle: CustomTextStyles.titleSmallOnPrimary_1,
            textInputAction: TextInputAction.done);
      })
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapChangeSave(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }
}
