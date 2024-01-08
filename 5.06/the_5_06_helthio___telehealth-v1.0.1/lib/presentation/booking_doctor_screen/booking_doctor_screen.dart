import 'models/booking_doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_5_06_helthio___telehealth/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_5_06_helthio___telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:the_5_06_helthio___telehealth/widgets/custom_elevated_button.dart';
import 'package:the_5_06_helthio___telehealth/widgets/custom_icon_button.dart';
import 'provider/booking_doctor_provider.dart';

class BookingDoctorScreen extends StatefulWidget {
  const BookingDoctorScreen({Key? key}) : super(key: key);

  @override
  BookingDoctorScreenState createState() => BookingDoctorScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => BookingDoctorProvider(),
        child: BookingDoctorScreen());
  }
}

class BookingDoctorScreenState extends State<BookingDoctorScreen> {
  @override
  void initState() {
    super.initState(); // TODO: implement Actions
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v),
                child: Column(children: [
                  _buildDoctorInformation(context),
                  SizedBox(height: 38.v),
                  _buildDate(context),
                  SizedBox(height: 33.v),
                  _buildReason1(context),
                  SizedBox(height: 19.v),
                  _buildPaymentDetail(context),
                  SizedBox(height: 13.v),
                  Divider(endIndent: 8.h),
                  SizedBox(height: 20.v),
                  _buildPaymentMethod(context)
                ])),
            bottomNavigationBar: _buildNinetyEight(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 42.v,
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.v, bottom: 10.v)),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_appointment".tr));
  }

  /// Section Widget
  Widget _buildDoctorInformation(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 41.h),
            child: Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle959,
                  height: 111.adaptSize,
                  width: 111.adaptSize,
                  radius: BorderRadius.circular(8.h)),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 5.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_dr_marcus_horizon".tr,
                            style: CustomTextStyles.titleMedium18),
                        SizedBox(height: 8.v),
                        Text("lbl_chardiologist".tr,
                            style: theme.textTheme.labelLarge),
                        SizedBox(height: 8.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgSignal,
                              height: 16.adaptSize,
                              width: 16.adaptSize),
                          Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text("lbl_4_7".tr,
                                  style: CustomTextStyles.labelLargeAmber500))
                        ]),
                        SizedBox(height: 11.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgLinkedin,
                              height: 13.adaptSize,
                              width: 13.adaptSize,
                              margin: EdgeInsets.only(bottom: 2.v)),
                          Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("lbl_800m_away".tr,
                                  style: theme.textTheme.labelLarge))
                        ])
                      ]))
            ])));
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: _buildAdminFee(context,
              adminFee: "lbl_date".tr, price: "lbl_change".tr)),
      SizedBox(height: 7.v),
      Padding(
          padding: EdgeInsets.only(right: 42.h),
          child: Row(children: [
            CustomIconButton(
                height: 36.adaptSize,
                width: 36.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillOnErrorContainerTL18,
                child: CustomImageView(imagePath: ImageConstant.imgGroup48)),
            Padding(
                padding: EdgeInsets.only(left: 15.h, top: 12.v, bottom: 6.v),
                child: Text("msg_wednesday_jun_23".tr,
                    style: CustomTextStyles.titleSmallBluegray700))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildReason(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      _buildCard(context, vISA: "lbl_reason".tr, change: "lbl_change".tr),
      SizedBox(height: 7.v),
      Row(children: [
        CustomIconButton(
            height: 36.adaptSize,
            width: 36.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillOnErrorContainerTL18,
            child: CustomImageView(imagePath: ImageConstant.imgUserPrimary)),
        Padding(
            padding: EdgeInsets.only(left: 15.h, top: 12.v, bottom: 6.v),
            child: Text("lbl_chest_pain".tr,
                style: CustomTextStyles.titleSmallOnPrimary))
      ])
    ]);
  }

  /// Section Widget
  Widget _buildReason1(BuildContext context) {
    return Column(
        children: [_buildReason(context), SizedBox(height: 15.v), Divider()]);
  }

  /// Section Widget
  Widget _buildPaymentDetail(BuildContext context) {
    return Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text("lbl_payment_detail".tr,
              style: theme.textTheme.titleMedium)),
      SizedBox(height: 11.v),
      Padding(
          padding: EdgeInsets.only(right: 1.h),
          child: _buildTotal(context,
              total: "lbl_consultation".tr, price: "lbl_60_00".tr)),
      SizedBox(height: 11.v),
      Padding(
          padding: EdgeInsets.only(right: 1.h),
          child: _buildAdminFee(context,
              adminFee: "lbl_admin_fee".tr, price: "lbl_01_00".tr)),
      SizedBox(height: 11.v),
      Padding(
          padding: EdgeInsets.only(right: 1.h),
          child: _buildAdminFee(context,
              adminFee: "msg_aditional_discount".tr, price: "lbl".tr)),
      SizedBox(height: 12.v),
      Padding(
          padding: EdgeInsets.only(right: 1.h),
          child: _buildTotal(context,
              total: "lbl_total".tr, price: "lbl_61_00".tr))
    ]);
  }

  /// Section Widget
  Widget _buildPaymentMethod(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text("lbl_payment_method".tr,
              style: theme.textTheme.titleMedium)),
      SizedBox(height: 10.v),
      _buildCard(context, vISA: "lbl_visa".tr, change: "lbl_change".tr)
    ]);
  }

  /// Section Widget
  Widget _buildNinetyEight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 24.h, bottom: 26.v),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 2.v),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_total".tr, style: theme.textTheme.titleSmall),
                    Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Text("lbl_61_002".tr,
                            style: CustomTextStyles.titleMedium18))
                  ])),
          CustomElevatedButton(
              height: 50.v,
              width: 192.h,
              text: "lbl_checkout".tr,
              buttonTextStyle: CustomTextStyles.titleSmallWhiteA700SemiBold,
              onPressed: () {
                onTapCheckout(context);
              })
        ]));
  }

  /// Common widget
  Widget _buildAdminFee(
    BuildContext context, {
    required String adminFee,
    required String price,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(adminFee,
          style: CustomTextStyles.bodyMediumGray500
              .copyWith(color: appTheme.gray500)),
      Text(price,
          style: CustomTextStyles.bodyMediumOnPrimary
              .copyWith(color: theme.colorScheme.onPrimary))
    ]);
  }

  /// Common widget
  Widget _buildTotal(
    BuildContext context, {
    required String total,
    required String price,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(total,
          style: CustomTextStyles.titleSmallOnPrimary
              .copyWith(color: theme.colorScheme.onPrimary)),
      Text(price,
          style: CustomTextStyles.titleSmallPrimarySemiBold
              .copyWith(color: theme.colorScheme.primary))
    ]);
  }

  /// Common widget
  Widget _buildCard(
    BuildContext context, {
    required String vISA,
    required String change,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
        decoration: AppDecoration.outlineGray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(vISA,
                      style: CustomTextStyles.titleMediumInterPrimaryContainer
                          .copyWith(
                              color: theme.colorScheme.primaryContainer))),
              Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text(change,
                      style: CustomTextStyles.labelLargePrimary_1
                          .copyWith(color: theme.colorScheme.primary)))
            ]));
  }

  /// Navigates to the chatWithDoctorScreen when the action is triggered.
  onTapCheckout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chatWithDoctorScreen,
    );
  }
}
