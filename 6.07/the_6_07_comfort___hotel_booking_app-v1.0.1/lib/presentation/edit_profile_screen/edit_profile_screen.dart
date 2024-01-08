import 'models/edit_profile_model.dart';
import 'notifier/edit_profile_notifier.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:the_6_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_6_07_comfort___hotel_booking_app/core/utils/validation_functions.dart';
import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';
import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_07_comfort___hotel_booking_app/widgets/custom_drop_down.dart';
import 'package:the_6_07_comfort___hotel_booking_app/widgets/custom_elevated_button.dart';
import 'package:the_6_07_comfort___hotel_booking_app/widgets/custom_phone_number.dart';
import 'package:the_6_07_comfort___hotel_booking_app/widgets/custom_text_form_field.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EditProfileScreenState createState() => EditProfileScreenState();
}

class EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 43.v,
                ),
                child: Column(
                  children: [
                    _buildLabel(context),
                    SizedBox(height: 24.v),
                    _buildLabel1(context),
                    SizedBox(height: 24.v),
                    _buildDate(context),
                    SizedBox(height: 24.v),
                    _buildEmail(context),
                    SizedBox(height: 24.v),
                    Consumer(
                      builder: (context, ref, _) {
                        return CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v),
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgFavoriteWhiteA70020x20,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                            ),
                          ),
                          hintText: "lbl_united_states".tr,
                          items: ref
                                  .watch(editProfileNotifier)
                                  .editProfileModelObj
                                  ?.dropdownItemList ??
                              [],
                          onChanged: (value) {
                            ref
                                .watch(editProfileNotifier)
                                .selectedDropDownValue = value;
                          },
                        );
                      },
                    ),
                    SizedBox(height: 24.v),
                    _buildPhoneNumber(context),
                    SizedBox(height: 24.v),
                    Consumer(
                      builder: (context, ref, _) {
                        return CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v),
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgFavoriteWhiteA70020x20,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                            ),
                          ),
                          hintText: "lbl_male".tr,
                          items: ref
                                  .watch(editProfileNotifier)
                                  .editProfileModelObj
                                  ?.dropdownItemList1 ??
                              [],
                          onChanged: (value) {
                            ref
                                .watch(editProfileNotifier)
                                .selectedDropDownValue1 = value;
                          },
                        );
                      },
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildUpdate(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 52.v,
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 11.v,
          bottom: 13.v,
        ),
        onTap: () {
          onTapArrowDown(context);
        },
      ),
      title: AppbarTitle(
        text: "lbl_edit_profile".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildLabel(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(editProfileNotifier).labelController,
          hintText: "lbl_daniel_austin".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLabel1(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(editProfileNotifier).labelController1,
          hintText: "lbl_daniel".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(editProfileNotifier).dateController,
          hintText: "lbl_12_27_1995".tr,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconlyCurvedCalendarPrimary,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
          contentPadding: EdgeInsets.only(
            left: 20.h,
            top: 19.v,
            bottom: 19.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(editProfileNotifier).emailController,
          hintText: "lbl_uder_domain_com".tr,
          textInputType: TextInputType.emailAddress,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 20.v, 22.h, 20.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroupPrimary,
              height: 15.adaptSize,
              width: 15.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
          contentPadding: EdgeInsets.only(
            left: 20.h,
            top: 19.v,
            bottom: 19.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomPhoneNumber(
          country: ref.watch(editProfileNotifier).selectedCountry ??
              CountryPickerUtils.getCountryByPhoneCode('1'),
          controller: ref.watch(editProfileNotifier).phoneNumberController,
          onTap: (Country value) {
            ref.watch(editProfileNotifier).selectedCountry = value;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildUpdate(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_update".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 49.v,
      ),
    );
  }
}
