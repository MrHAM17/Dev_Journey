import 'notifier/bank_to_bank_three_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_pin_code_text_field.dart';

class BankToBankThreeScreen extends ConsumerStatefulWidget {
  const BankToBankThreeScreen({Key? key}) : super(key: key);

  @override
  BankToBankThreeScreenState createState() => BankToBankThreeScreenState();
}

class BankToBankThreeScreenState extends ConsumerState<BankToBankThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 24.h, top: 64.v, right: 24.h),
                child: Column(children: [
                  SizedBox(
                      width: 221.h,
                      child: Text("msg_enter_your_account".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.headlineSmallExtraBold
                              .copyWith(height: 1.50))),
                  SizedBox(height: 3.v),
                  Text("msg_enter_your_send".tr,
                      style: theme.textTheme.bodyMedium),
                  SizedBox(height: 42.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.h),
                      child: Consumer(builder: (context, ref, _) {
                        return CustomPinCodeTextField(
                            context: context,
                            controller: ref
                                .watch(bankToBankThreeNotifier)
                                .otpController,
                            onChanged: (value) {
                              ref
                                  .watch(bankToBankThreeNotifier)
                                  .otpController
                                  ?.text = value;
                            });
                      })),
                  SizedBox(height: 40.v),
                  CustomElevatedButton(
                      text: "lbl_make_payment".tr.toUpperCase(),
                      onPressed: () {
                        onTapMakePayment(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_bank_to_bank2".tr));
  }

  /// Navigates to the moneySentSuccessScreen when the action is triggered.
  onTapMakePayment(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.moneySentSuccessScreen,
    );
  }
}
