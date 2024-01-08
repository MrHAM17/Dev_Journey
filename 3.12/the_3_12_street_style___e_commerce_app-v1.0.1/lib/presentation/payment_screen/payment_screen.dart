import '../payment_screen/widgets/card_item_widget.dart';
import 'bloc/payment_bloc.dart';
import 'models/card_item_model.dart';
import 'models/payment_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:the_3_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_3_12_street_style___e_commerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_3_12_street_style___e_commerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_3_12_street_style___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_3_12_street_style___e_commerce_app/widgets/custom_icon_button.dart';
import 'package:the_3_12_street_style___e_commerce_app/widgets/custom_text_form_field.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentBloc>(
        create: (context) =>
            PaymentBloc(PaymentState(paymentModelObj: PaymentModel()))
              ..add(PaymentInitialEvent()),
        child: PaymentScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 29.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 22.h),
                          child: Text("lbl_payment".tr,
                              style: theme.textTheme.displayMedium))),
                  SizedBox(height: 16.v),
                  _buildEighteen(context),
                  SizedBox(height: 23.v),
                  _buildThirtyTwo(context),
                  SizedBox(height: 8.v)
                ])),
            bottomNavigationBar: _buildButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 53.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 29.h, top: 13.v, bottom: 13.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.only(left: 23.h, top: 13.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup86,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup84,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 36.h))
        ]);
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 23.h),
              child: Text("lbl_my_cards".tr,
                  style: CustomTextStyles.titleLargeBlack900)),
          SizedBox(height: 15.v),
          Padding(
              padding: EdgeInsets.only(left: 23.h),
              child: BlocBuilder<PaymentBloc, PaymentState>(
                  builder: (context, state) {
                return CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 195.v,
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          state.sliderIndex = index;
                        }),
                    itemCount: state.paymentModelObj?.cardItemList.length ?? 0,
                    itemBuilder: (context, index, realIndex) {
                      CardItemModel model =
                          state.paymentModelObj?.cardItemList[index] ??
                              CardItemModel();
                      return CardItemWidget(model);
                    });
              })),
          SizedBox(height: 22.v),
          CustomIconButton(
              height: 74.v,
              width: 50.h,
              padding: EdgeInsets.all(14.h),
              decoration: IconButtonStyleHelper.outlineGray,
              alignment: Alignment.center,
              child:
                  CustomImageView(imagePath: ImageConstant.imgPlusBlack90001))
        ]));
  }

  /// Section Widget
  Widget _buildSixtySeven(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("lbl_payment_option".tr,
                      style: CustomTextStyles.titleLargeBlack900),
                  SizedBox(height: 15.v),
                  BlocSelector<PaymentBloc, PaymentState,
                          TextEditingController?>(
                      selector: (state) => state.applePayController,
                      builder: (context, applePayController) {
                        return CustomTextFormField(
                            controller: applePayController,
                            textInputAction: TextInputAction.done);
                      })
                ])));
  }

  /// Section Widget
  Widget _buildThirtyTwo(BuildContext context) {
    return SizedBox(
        height: 214.v,
        width: 413.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          _buildSixtySeven(context),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(top: 86.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 36.h, vertical: 11.v),
                  decoration: AppDecoration.shadow,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 55.v, bottom: 1.v),
                            child: Text("lbl_total".tr,
                                style:
                                    CustomTextStyles.displaySmallBlack90001_1)),
                        Padding(
                            padding: EdgeInsets.only(top: 55.v, right: 4.h),
                            child: Text("lbl_116".tr,
                                style:
                                    CustomTextStyles.displaySmallBlack90001_1))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 161.h, right: 161.h, bottom: 41.v),
        decoration: AppDecoration.fillBlack,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("lbl_payment".tr,
              style: CustomTextStyles.titleLargeWhiteA700Bold),
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 13.v,
              width: 91.h,
              margin: EdgeInsets.only(top: 1.v))
        ]));
  }
}
