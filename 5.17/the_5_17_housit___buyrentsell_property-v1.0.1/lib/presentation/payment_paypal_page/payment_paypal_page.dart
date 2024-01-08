import 'models/payment_paypal_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/utils/validation_functions.dart';
import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';
import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_text_form_field.dart';
import 'provider/payment_paypal_provider.dart';

// ignore_for_file: must_be_immutable
class PaymentPaypalPage extends StatefulWidget {
  const PaymentPaypalPage({Key? key})
      : super(
          key: key,
        );

  @override
  PaymentPaypalPageState createState() => PaymentPaypalPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PaymentPaypalProvider(),
      child: PaymentPaypalPage(),
    );
  }
}

class PaymentPaypalPageState extends State<PaymentPaypalPage>
    with AutomaticKeepAliveClientMixin<PaymentPaypalPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: _buildScrollView(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyEight(BuildContext context) {
    return Column(
      children: [
        Selector<PaymentPaypalProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.lockController,
          builder: (context, lockController, child) {
            return CustomTextFormField(
              controller: lockController,
              hintText: "lbl_jonathan".tr,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(50.h),
                  ),
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgLockBlueGray80001,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 70.v,
              ),
            );
          },
        ),
        SizedBox(height: 15.v),
        Selector<PaymentPaypalProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.emailController,
          builder: (context, emailController, child) {
            return CustomTextFormField(
              controller: emailController,
              hintText: "lbl_user_email_com".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.emailAddress,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgDownload,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 70.v,
              ),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(
              children: [
                _buildFortyEight(context),
                SizedBox(height: 30.v),
                CustomImageView(
                  imagePath: ImageConstant.imageNotFound,
                  height: 1.v,
                  width: 100.h,
                ),
                SizedBox(height: 10.v),
                CustomElevatedButton(
                  text: "lbl_next".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
