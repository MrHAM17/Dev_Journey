import 'models/enter_otp_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/widgets/custom_elevated_button.dart';
import 'provider/enter_otp_provider.dart';

class EnterOtpPage extends StatefulWidget {
  const EnterOtpPage({Key? key}) : super(key: key);

  @override
  EnterOtpPageState createState() => EnterOtpPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => EnterOtpProvider(), child: EnterOtpPage());
  }
}

class EnterOtpPageState extends State<EnterOtpPage>
    with AutomaticKeepAliveClientMixin<EnterOtpPage> {
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
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.background,
                child: Column(children: [
                  SizedBox(height: 40.v),
                  _buildContinue(context)
                ]))));
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(children: [
          CustomElevatedButton(
              text: "lbl_continue".tr,
              onPressed: () {
                onTapContinue(context);
              }),
          SizedBox(height: 26.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("msg_didn_t_receive_code".tr,
                    style: CustomTextStyles.titleMediumGray500),
                Text("lbl_resend_code".tr, style: theme.textTheme.titleMedium)
              ]))
        ]));
  }

  /// Navigates to the jobTypeScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.jobTypeScreen,
    );
  }
}
