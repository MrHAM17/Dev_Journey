import 'models/termsandconditions_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_03_todo/core/app_export.dart';
import 'package:the_5_03_todo/widgets/custom_icon_button.dart';
import 'provider/termsandconditions_provider.dart';

class TermsandconditionsScreen extends StatefulWidget {
  const TermsandconditionsScreen({Key? key}) : super(key: key);

  @override
  TermsandconditionsScreenState createState() =>
      TermsandconditionsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TermsandconditionsProvider(),
        child: TermsandconditionsScreen());
  }
}

class TermsandconditionsScreenState extends State<TermsandconditionsScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 43.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          onTap: () {
                            onTapBtnArrowLeft(context);
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft)),
                      SizedBox(height: 79.v),
                      SizedBox(
                          width: 155.h,
                          child: Text("msg_terms_and_conditions".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineMedium!
                                  .copyWith(height: 1.36))),
                      SizedBox(height: 63.v),
                      Container(
                          width: 285.h,
                          margin: EdgeInsets.only(right: 25.h),
                          child: Text("msg_lorem_ipsum_dolor2".tr,
                              maxLines: 20,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallOnPrimary_1
                                  .copyWith(height: 2.00))),
                      SizedBox(height: 2.v)
                    ]))));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
