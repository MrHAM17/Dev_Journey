import 'notifier/add_card_one_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/core/utils/validation_functions.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_checkbox_button.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_text_form_field.dart';

class AddCardOneScreen extends ConsumerStatefulWidget {
  const AddCardOneScreen({Key? key}) : super(key: key);

  @override
  AddCardOneScreenState createState() => AddCardOneScreenState();
}

// ignore_for_file: must_be_immutable
class AddCardOneScreenState extends ConsumerState<AddCardOneScreen> {
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
                                horizontal: 21.h, vertical: 34.v),
                            child: Column(children: [
                              _buildInputField(context),
                              SizedBox(height: 19.v),
                              _buildInputField1(context),
                              SizedBox(height: 19.v),
                              _buildFrame(context),
                              SizedBox(height: 21.v),
                              _buildSaveMyCardDetails(context),
                              SizedBox(height: 41.v),
                              CustomElevatedButton(
                                  text: "lbl_save".tr.toUpperCase(),
                                  margin: EdgeInsets.only(left: 6.h),
                                  onPressed: () {
                                    onTapSave(context);
                                  }),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_new_card".tr));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_name".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          Consumer(builder: (context, ref, _) {
            return CustomTextFormField(
                controller: ref.watch(addCardOneNotifier).nameController,
                hintText: "lbl_user_name".tr,
                validator: (value) {
                  if (!isText(value)) {
                    return "err_msg_please_enter_valid_text".tr;
                  }
                  return null;
                });
          })
        ]));
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_card_number".tr,
              style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          Consumer(builder: (context, ref, _) {
            return CustomTextFormField(
                controller: ref.watch(addCardOneNotifier).cardNumberController,
                hintText: "lbl_card_number2".tr,
                textInputType: TextInputType.number,
                validator: (value) {
                  if (!isNumeric(value)) {
                    return "err_msg_please_enter_valid_number".tr;
                  }
                  return null;
                });
          })
        ]));
  }

  /// Section Widget
  Widget _buildInputField2(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(top: 1.v, right: 10.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("lbl_expires".tr,
                  style: CustomTextStyles.bodyLargeGray70001),
              SizedBox(height: 9.v),
              Consumer(builder: (context, ref, _) {
                return CustomTextFormField(
                    width: 173.h,
                    controller: ref.watch(addCardOneNotifier).dateController,
                    hintText: "lbl_date".tr);
              })
            ])));
  }

  /// Section Widget
  Widget _buildInputField3(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("lbl_cvv".tr, style: CustomTextStyles.bodyLargeGray70001),
              SizedBox(height: 11.v),
              Consumer(builder: (context, ref, _) {
                return CustomTextFormField(
                    width: 173.h,
                    controller: ref.watch(addCardOneNotifier).cvvController,
                    hintText: "lbl_code".tr,
                    textInputAction: TextInputAction.done);
              })
            ])));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildInputField2(context),
          _buildInputField3(context)
        ]));
  }

  /// Section Widget
  Widget _buildSaveMyCardDetails(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Consumer(builder: (context, ref, _) {
              return CustomCheckboxButton(
                  alignment: Alignment.centerLeft,
                  text: "msg_save_my_card_details".tr,
                  value: ref.watch(addCardOneNotifier).saveMyCardDetails,
                  onChange: (value) {
                    ref
                        .read(addCardOneNotifier.notifier)
                        .changeCheckBox1(value);
                  });
            })));
  }

  /// Navigates to the paymentSuccessScreen when the action is triggered.
  onTapSave(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentSuccessScreen,
    );
  }
}
