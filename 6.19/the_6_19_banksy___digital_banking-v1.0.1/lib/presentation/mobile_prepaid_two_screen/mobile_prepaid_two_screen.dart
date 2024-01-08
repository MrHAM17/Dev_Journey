import 'notifier/mobile_prepaid_two_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_text_form_field.dart';

class MobilePrepaidTwoScreen extends ConsumerStatefulWidget {
  const MobilePrepaidTwoScreen({Key? key}) : super(key: key);

  @override
  MobilePrepaidTwoScreenState createState() => MobilePrepaidTwoScreenState();
}

class MobilePrepaidTwoScreenState
    extends ConsumerState<MobilePrepaidTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 34.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse113,
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      radius: BorderRadius.circular(30.h)),
                  SizedBox(height: 11.v),
                  Text("lbl_adom_shafi".tr,
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 4.v),
                  Text("lbl_01704889390".tr,
                      style: CustomTextStyles.bodySmallOnPrimaryContainer),
                  SizedBox(height: 42.v),
                  Text("msg_enter_the_ammount".tr,
                      style: CustomTextStyles.headlineSmallExtraBold),
                  SizedBox(height: 10.v),
                  Text("msg_enter_ammount_you".tr,
                      style: theme.textTheme.bodyMedium),
                  SizedBox(height: 41.v),
                  Consumer(builder: (context, ref, _) {
                    return CustomTextFormField(
                        controller:
                            ref.watch(mobilePrepaidTwoNotifier).priceController,
                        hintText: "lbl_500".tr,
                        hintStyle: CustomTextStyles.titleMedium18,
                        textInputAction: TextInputAction.done);
                  }),
                  SizedBox(height: 40.v),
                  CustomElevatedButton(text: "lbl_continue".tr.toUpperCase()),
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
        title: AppbarTitle(text: "lbl_mobile_prepaid2".tr));
  }
}
