import 'bloc/wish_list_bloc.dart';
import 'models/wish_list_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_03_todo/core/app_export.dart';
import 'package:the_3_03_todo/widgets/custom_elevated_button.dart';
import 'package:the_3_03_todo/widgets/custom_icon_button.dart';
import 'package:the_3_03_todo/widgets/custom_text_form_field.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WishListBloc>(
        create: (context) =>
            WishListBloc(WishListState(wishListModelObj: WishListModel()))
              ..add(WishListInitialEvent()),
        child: WishListScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 43.v),
                child: Column(children: [
                  CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      alignment: Alignment.centerLeft,
                      onTap: () {
                        onTapBtnArrowLeft(context);
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft)),
                  SizedBox(height: 75.v),
                  _buildPageHeader(context),
                  SizedBox(height: 85.v),
                  _buildDate(context,
                      date: "lbl_task_todo".tr,
                      calendar: ImageConstant.imgCalendarOnprimarycontainer,
                      ttMmYy: "msg_create_action_mobile".tr),
                  SizedBox(height: 18.v),
                  _buildDate(context,
                      date: "lbl_date".tr,
                      calendar: ImageConstant.imgCalendar,
                      ttMmYy: "lbl_tt_mm_yy".tr),
                  SizedBox(height: 18.v),
                  _buildAttachments(context),
                  SizedBox(height: 50.v),
                  CustomElevatedButton(
                      text: "msg_make_a_wish_list".tr,
                      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
                      onPressed: () {
                        onTapMakeAWishList(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildPageHeader(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_make_a_wish_list".tr, style: theme.textTheme.headlineMedium),
      SizedBox(height: 11.v),
      Text("msg_make_your_job_easier".tr, style: theme.textTheme.labelLarge)
    ]);
  }

  /// Section Widget
  Widget _buildAttachments(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_attachments".tr, style: CustomTextStyles.labelLargeOnPrimary_1),
      SizedBox(height: 12.v),
      BlocSelector<WishListBloc, WishListState, TextEditingController?>(
          selector: (state) => state.filesizeController,
          builder: (context, filesizeController) {
            return CustomTextFormField(
                controller: filesizeController,
                hintText: "lbl_maximum_10_mb".tr,
                hintStyle: CustomTextStyles.titleSmallOnPrimary,
                textInputAction: TextInputAction.done,
                prefix: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 18.h, vertical: 17.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgClose,
                        height: 23.v,
                        width: 24.h)),
                prefixConstraints: BoxConstraints(maxHeight: 58.v),
                contentPadding:
                    EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v),
                borderDecoration:
                    TextFormFieldStyleHelper.outlineOnPrimaryTL14);
          })
    ]);
  }

  /// Common widget
  Widget _buildDate(
    BuildContext context, {
    required String date,
    required String calendar,
    required String ttMmYy,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(date,
          style: CustomTextStyles.labelLargeOnPrimary_1
              .copyWith(color: theme.colorScheme.onPrimary.withOpacity(0.6))),
      SizedBox(height: 12.v),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 16.v),
          decoration: AppDecoration.outlineOnPrimary
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
          child: Row(children: [
            CustomImageView(imagePath: calendar, height: 23.v, width: 24.h),
            Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Text(ttMmYy,
                    style: CustomTextStyles.titleSmallOnPrimary.copyWith(
                        color: theme.colorScheme.onPrimary.withOpacity(0.6))))
          ]))
    ]);
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapMakeAWishList(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }
}
