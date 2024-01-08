import 'models/add_person_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/core/utils/validation_functions.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/custom_checkbox_button.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/custom_icon_button.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/custom_text_form_field.dart';
import 'provider/add_person_provider.dart';

class AddPersonScreen extends StatefulWidget {
  const AddPersonScreen({Key? key}) : super(key: key);

  @override
  AddPersonScreenState createState() => AddPersonScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AddPersonProvider(), child: AddPersonScreen());
  }
}

// ignore_for_file: must_be_immutable
class AddPersonScreenState extends State<AddPersonScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    NavigatorService.pushNamed(
      AppRoutes.addCardOneScreen,
    );
  }

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
                                horizontal: 24.h, vertical: 34.v),
                            child: Column(children: [
                              SizedBox(
                                  height: 100.adaptSize,
                                  width: 100.adaptSize,
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: 100.adaptSize,
                                                width: 100.adaptSize,
                                                decoration: BoxDecoration(
                                                    color: appTheme.gray300,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50.h)))),
                                        CustomIconButton(
                                            height: 30.adaptSize,
                                            width: 30.adaptSize,
                                            padding: EdgeInsets.all(9.h),
                                            alignment: Alignment.bottomRight,
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgGroup18117)),
                                        CustomImageView(
                                            imagePath: ImageConstant.img1Avatar,
                                            height: 32.adaptSize,
                                            width: 32.adaptSize,
                                            alignment: Alignment.center)
                                      ])),
                              SizedBox(height: 40.v),
                              _buildInputField(context),
                              SizedBox(height: 19.v),
                              _buildInputField1(context),
                              SizedBox(height: 19.v),
                              _buildSaveOnList(context),
                              SizedBox(height: 43.v),
                              CustomElevatedButton(
                                  text: "lbl_save".tr.toUpperCase(),
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
        title: AppbarTitle(text: "lbl_new_contact".tr));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_name".tr, style: CustomTextStyles.bodyLargeGray70001),
      SizedBox(height: 11.v),
      Selector<AddPersonProvider, TextEditingController?>(
          selector: (context, provider) => provider.nameController,
          builder: (context, nameController, child) {
            return CustomTextFormField(
                controller: nameController,
                hintText: "lbl_user_name".tr,
                validator: (value) {
                  if (!isText(value)) {
                    return "err_msg_please_enter_valid_text".tr;
                  }
                  return null;
                });
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_card_number".tr, style: CustomTextStyles.bodyLargeGray70001),
      SizedBox(height: 11.v),
      Selector<AddPersonProvider, TextEditingController?>(
          selector: (context, provider) => provider.cardNumberController,
          builder: (context, cardNumberController, child) {
            return CustomTextFormField(
                controller: cardNumberController,
                hintText: "lbl_card_number2".tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.number,
                validator: (value) {
                  if (!isNumeric(value)) {
                    return "err_msg_please_enter_valid_number".tr;
                  }
                  return null;
                });
          })
    ]);
  }

  /// Section Widget
  Widget _buildSaveOnList(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Selector<AddPersonProvider, bool?>(
            selector: (context, provider) => provider.saveOnList,
            builder: (context, saveOnList, child) {
              return CustomCheckboxButton(
                  alignment: Alignment.centerLeft,
                  text: "lbl_save_on_list".tr,
                  value: saveOnList,
                  onChange: (value) {
                    context.read<AddPersonProvider>().changeCheckBox1(value);
                  });
            }));
  }

  /// Navigates to the addCardOneScreen when the action is triggered.
  onTapSave(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addCardOneScreen,
    );
  }
}
