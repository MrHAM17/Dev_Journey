import 'bloc/terms_and_conditions_bloc.dart';
import 'models/terms_and_conditions_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_05_blog_app/core/app_export.dart';
import 'package:the_3_05_blog_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_3_05_blog_app/widgets/app_bar/custom_app_bar.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<TermsAndConditionsBloc>(
      create: (context) => TermsAndConditionsBloc(TermsAndConditionsState(
        termsAndConditionsModelObj: TermsAndConditionsModel(),
      ))
        ..add(TermsAndConditionsInitialEvent()),
      child: TermsAndConditionsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TermsAndConditionsBloc, TermsAndConditionsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 1.v),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_terms_and_conditions".tr,
                        style: CustomTextStyles.titleMediumBlack90018,
                      ),
                      SizedBox(height: 13.v),
                      Text(
                        "msg_effective_september".tr,
                        style: CustomTextStyles.bodyMediumGray600,
                      ),
                      SizedBox(height: 24.v),
                      Text(
                        "msg_you_can_see_our".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                      SizedBox(height: 23.v),
                      Opacity(
                        opacity: 0.87,
                        child: Container(
                          width: 311.h,
                          margin: EdgeInsets.only(right: 23.h),
                          child: Text(
                            "msg_lorem_ipsum_dolor5".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumBlack900.copyWith(
                              height: 1.50,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 22.v),
                      Opacity(
                        opacity: 0.87,
                        child: SizedBox(
                          width: 335.h,
                          child: Text(
                            "msg_lorem_ipsum_dolor4".tr,
                            maxLines: 6,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumBlack900.copyWith(
                              height: 1.50,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 22.v),
                      Opacity(
                        opacity: 0.87,
                        child: SizedBox(
                          width: 335.h,
                          child: Text(
                            "msg_lorem_ipsum_dolor4".tr,
                            maxLines: 6,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumBlack900.copyWith(
                              height: 1.50,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 22.v),
                      Opacity(
                        opacity: 0.87,
                        child: Container(
                          width: 311.h,
                          margin: EdgeInsets.only(right: 23.h),
                          child: Text(
                            "msg_lorem_ipsum_dolor5".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumBlack900.copyWith(
                              height: 1.50,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 23.v),
                      Text(
                        "msg_your_account_and".tr,
                        style: CustomTextStyles.titleMediumBlack900Medium,
                      ),
                      SizedBox(height: 22.v),
                      Opacity(
                        opacity: 0.87,
                        child: Container(
                          width: 311.h,
                          margin: EdgeInsets.only(right: 23.h),
                          child: Text(
                            "msg_lorem_ipsum_dolor5".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumBlack900.copyWith(
                              height: 1.50,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgClose,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }
}