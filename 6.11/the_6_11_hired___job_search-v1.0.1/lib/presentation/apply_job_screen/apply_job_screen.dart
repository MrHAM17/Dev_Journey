import 'notifier/apply_job_notifier.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:the_6_11_hired___job_search/core/app_export.dart';
import 'package:the_6_11_hired___job_search/core/utils/validation_functions.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_11_hired___job_search/widgets/custom_elevated_button.dart';
import 'package:the_6_11_hired___job_search/widgets/custom_text_form_field.dart';
import 'package:the_6_11_hired___job_search/presentation/apply_job_popup_dialog/apply_job_popup_dialog.dart';

class ApplyJobScreen extends ConsumerStatefulWidget {
  const ApplyJobScreen({Key? key}) : super(key: key);

  @override
  ApplyJobScreenState createState() => ApplyJobScreenState();
}

// ignore_for_file: must_be_immutable
class ApplyJobScreenState extends ConsumerState<ApplyJobScreen> {
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
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.h, vertical: 31.v),
                            child: Column(children: [
                              _buildINPUTFIELD(context),
                              SizedBox(height: 26.v),
                              _buildINPUTFIELD1(context),
                              SizedBox(height: 28.v),
                              _buildCVFields(context),
                              SizedBox(height: 28.v),
                              _buildINPUTFIELD2(context),
                              SizedBox(height: 5.v)
                            ]))))),
            bottomNavigationBar: _buildContinue(context)));
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
              onTapImage(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_apply_job".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgComponent3,
              margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 14.v))
        ]);
  }

  /// Section Widget
  Widget _buildINPUTFIELD(BuildContext context) {
    return Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_full_name".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 9.v),
          Consumer(builder: (context, ref, _) {
            return CustomTextFormField(
                controller: ref.watch(applyJobNotifier).fullNameController,
                hintText: "msg_brooklyn_simmons".tr);
          })
        ]));
  }

  /// Section Widget
  Widget _buildINPUTFIELD1(BuildContext context) {
    return Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_email_address".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 9.v),
          Consumer(builder: (context, ref, _) {
            return CustomTextFormField(
                controller: ref.watch(applyJobNotifier).emailController,
                hintText: "lbl_xyz_gmail_com".tr,
                textInputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_email".tr;
                  }
                  return null;
                });
          })
        ]));
  }

  /// Section Widget
  Widget _buildCVFields(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_upload_cv".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 7.v),
      DottedBorder(
          color: appTheme.gray300,
          padding:
              EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
          strokeWidth: 1.h,
          radius: Radius.circular(24),
          borderType: BorderType.RRect,
          dashPattern: [6, 6],
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 124.h, vertical: 39.v),
              decoration: AppDecoration.outlineGray300
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgCloudUpload1,
                    height: 40.adaptSize,
                    width: 40.adaptSize),
                SizedBox(height: 8.v),
                Text("lbl_upload_file".tr,
                    style: CustomTextStyles.titleSmallSemiBold)
              ])))
    ]);
  }

  /// Section Widget
  Widget _buildINPUTFIELD2(BuildContext context) {
    return Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_website_blog_or".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 7.v),
          Consumer(builder: (context, ref, _) {
            return CustomTextFormField(
                controller: ref.watch(applyJobNotifier).frameOneController,
                hintText: "lbl_http".tr,
                textInputAction: TextInputAction.done);
          })
        ]));
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_continue".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v),
        onPressed: () {
          onTapContinue(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapImage(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Displays a dialog with the [ApplyJobPopupDialog] content.
  onTapContinue(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: ApplyJobPopupDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
