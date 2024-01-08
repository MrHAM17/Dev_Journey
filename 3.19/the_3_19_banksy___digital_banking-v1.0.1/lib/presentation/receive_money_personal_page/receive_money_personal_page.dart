import 'bloc/receive_money_personal_bloc.dart';
import 'models/receive_money_personal_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_3_19_banksy___digital_banking/core/utils/validation_functions.dart';
import 'package:the_3_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_3_19_banksy___digital_banking/widgets/custom_text_form_field.dart';

class ReceiveMoneyPersonalPage extends StatefulWidget {
  const ReceiveMoneyPersonalPage({Key? key}) : super(key: key);

  @override
  ReceiveMoneyPersonalPageState createState() =>
      ReceiveMoneyPersonalPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<ReceiveMoneyPersonalBloc>(
        create: (context) => ReceiveMoneyPersonalBloc(ReceiveMoneyPersonalState(
            receiveMoneyPersonalModelObj: ReceiveMoneyPersonalModel()))
          ..add(ReceiveMoneyPersonalInitialEvent()),
        child: ReceiveMoneyPersonalPage());
  }
}

// ignore_for_file: must_be_immutable
class ReceiveMoneyPersonalPageState extends State<ReceiveMoneyPersonalPage>
    with AutomaticKeepAliveClientMixin<ReceiveMoneyPersonalPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 39.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Column(children: [
                        _buildFrame(context),
                        SizedBox(height: 20.v),
                        _buildInputField1(context),
                        SizedBox(height: 21.v),
                        _buildInputField2(context),
                        SizedBox(height: 20.v),
                        _buildFrame1(context),
                        SizedBox(height: 21.v),
                        _buildInputField3(context),
                        SizedBox(height: 40.v),
                        _buildSend(context)
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_first_name".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 11.v),
          BlocSelector<ReceiveMoneyPersonalBloc, ReceiveMoneyPersonalState,
                  TextEditingController?>(
              selector: (state) => state.firstNameController,
              builder: (context, firstNameController) {
                return CustomTextFormField(
                    width: 173.h,
                    controller: firstNameController,
                    hintText: "lbl_name".tr,
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
  Widget _buildLastName(BuildContext context) {
    return BlocSelector<ReceiveMoneyPersonalBloc, ReceiveMoneyPersonalState,
            TextEditingController?>(
        selector: (state) => state.lastNameController,
        builder: (context, lastNameController) {
          return CustomTextFormField(
              width: 173.h,
              controller: lastNameController,
              hintText: "lbl_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      _buildInputField(context),
      Padding(
          padding: EdgeInsets.only(left: 10.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("lbl_last_name".tr,
                style: CustomTextStyles.bodyLargeGray70001),
            SizedBox(height: 11.v),
            _buildLastName(context)
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<ReceiveMoneyPersonalBloc, ReceiveMoneyPersonalState,
            TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
              controller: emailController,
              hintText: "lbl_your_email_here".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email".tr, style: CustomTextStyles.bodyLargeGray70001),
      SizedBox(height: 11.v),
      _buildEmail(context)
    ]);
  }

  /// Section Widget
  Widget _buildCountry(BuildContext context) {
    return BlocSelector<ReceiveMoneyPersonalBloc, ReceiveMoneyPersonalState,
            TextEditingController?>(
        selector: (state) => state.countryController,
        builder: (context, countryController) {
          return CustomTextFormField(
              controller: countryController, hintText: "lbl_select_country".tr);
        });
  }

  /// Section Widget
  Widget _buildInputField2(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_country".tr, style: CustomTextStyles.bodyLargeGray70001),
      SizedBox(height: 9.v),
      _buildCountry(context)
    ]);
  }

  /// Section Widget
  Widget _buildAmount(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 10.h),
            child: BlocSelector<ReceiveMoneyPersonalBloc,
                    ReceiveMoneyPersonalState, TextEditingController?>(
                selector: (state) => state.amountController,
                builder: (context, amountController) {
                  return CustomTextFormField(
                      controller: amountController, hintText: "lbl_0_00".tr);
                })));
  }

  /// Section Widget
  Widget _buildInputs(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: BlocSelector<ReceiveMoneyPersonalBloc,
                    ReceiveMoneyPersonalState, TextEditingController?>(
                selector: (state) => state.inputsController,
                builder: (context, inputsController) {
                  return CustomTextFormField(
                      controller: inputsController, hintText: "lbl_usd".tr);
                })));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(right: 107.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text("lbl_amount".tr,
                    style: CustomTextStyles.bodyLargeGray70001)),
            Text("lbl_currency".tr, style: CustomTextStyles.bodyLargeGray70001)
          ])),
      SizedBox(height: 10.v),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_buildAmount(context), _buildInputs(context)])
    ]);
  }

  /// Section Widget
  Widget _buildInputs1(BuildContext context) {
    return BlocSelector<ReceiveMoneyPersonalBloc, ReceiveMoneyPersonalState,
            TextEditingController?>(
        selector: (state) => state.inputsController1,
        builder: (context, inputsController1) {
          return CustomTextFormField(
              controller: inputsController1,
              hintText: "msg_write_a_short_note".tr,
              textInputAction: TextInputAction.done);
        });
  }

  /// Section Widget
  Widget _buildInputField3(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_massage".tr, style: CustomTextStyles.bodyLargeGray70001),
      SizedBox(height: 9.v),
      _buildInputs1(context)
    ]);
  }

  /// Section Widget
  Widget _buildSend(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_send".tr.toUpperCase(),
        onPressed: () {
          onTapSend(context);
        });
  }

  /// Navigates to the requestSentScreen when the action is triggered.
  onTapSend(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.requestSentScreen,
    );
  }
}
