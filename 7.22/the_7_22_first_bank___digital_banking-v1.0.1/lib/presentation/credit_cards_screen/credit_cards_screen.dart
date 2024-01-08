import '../credit_cards_screen/widgets/balance2_item_widget.dart';
import '../credit_cards_screen/widgets/creditcards_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:the_7_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/custom_icon_button.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/custom_search_view.dart';
import 'package:the_7_22_first_bank___digital_banking/widgets/custom_text_form_field.dart';

class CreditCardsScreen extends StatelessWidget {
  CreditCardsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  int sliderIndex = 1;

  TextEditingController classicController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expirationDateController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildHeader(context),
                SizedBox(height: 27.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 24.h,
                        bottom: 5.v,
                      ),
                      child: Column(
                        children: [
                          _buildMyCards(context),
                          SizedBox(height: 12.v),
                          _buildBalance(context),
                          SizedBox(height: 27.v),
                          _buildCardExpenseStatistics(context),
                          SizedBox(height: 25.v),
                          _buildCardList(context),
                          SizedBox(height: 26.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Add New Card",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          SizedBox(height: 13.v),
                          _buildClassic(context),
                          SizedBox(height: 27.v),
                          _buildCardSetting(context),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.white,
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: 48.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 5.v,
                bottom: 6.v,
              ),
            ),
            centerTitle: true,
            title: AppbarTitle(
              text: "Credit Cards",
            ),
            actions: [
              AppbarTrailingCircleimage(
                imagePath: ImageConstant.imgEllipse37,
                margin: EdgeInsets.symmetric(horizontal: 24.h),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: CustomSearchView(
              controller: searchController,
              hintText: "Search for something",
            ),
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMyCards(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 24.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Cards",
              style: theme.textTheme.titleMedium,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Text(
                "See All",
                style: CustomTextStyles.titleSmallSemiBold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBalance(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 170.v,
        initialPage: 0,
        autoPlay: true,
        viewportFraction: 1.0,
        enableInfiniteScroll: false,
        scrollDirection: Axis.horizontal,
        onPageChanged: (
          index,
          reason,
        ) {
          sliderIndex = index;
        },
      ),
      itemCount: 2,
      itemBuilder: (context, index, realIndex) {
        return Balance2ItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildCardExpenseStatistics(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Card Expense Statistics",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 12.v),
        Container(
          margin: EdgeInsets.only(right: 24.h),
          padding: EdgeInsets.symmetric(
            horizontal: 63.h,
            vertical: 17.v,
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder17,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup346Chart,
                height: 191.v,
                width: 200.h,
              ),
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                          decoration: BoxDecoration(
                            color: appTheme.indigo100,
                            borderRadius: BorderRadius.circular(
                              6.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "DBL Bank",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                          decoration: BoxDecoration(
                            color: appTheme.indigo500,
                            borderRadius: BorderRadius.circular(
                              6.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "BRC Bank",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 11.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 1.v,
                          right: 8.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 12.adaptSize,
                              width: 12.adaptSize,
                              margin: EdgeInsets.only(bottom: 2.v),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.circular(
                                  6.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "ABM Bank",
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 12.adaptSize,
                              width: 12.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 1.v),
                              decoration: BoxDecoration(
                                color: appTheme.indigo300,
                                borderRadius: BorderRadius.circular(
                                  6.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "MCP Bank",
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCardList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Card List",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 14.v),
        Padding(
          padding: EdgeInsets.only(right: 24.h),
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 12.v,
              );
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return CreditcardsItemWidget();
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Card Type",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: classicController,
          hintText: "Classic",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField3(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Name On Card",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: nameController,
          hintText: "My Cards",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField4(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Card Number",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: cardNumberController,
          hintText: "**** **** **** ****",
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField5(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Expiration Date",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: expirationDateController,
          hintText: "25 January 2025",
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildClassic(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(right: 24.h),
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder17,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 283.h,
              child: Text(
                "Credit Card generally means a plastic card issued by Scheduled Commercial Banks assigned to a Cardholder, with a credit limit, that can be used to purchase goods and services on credit or obtain cash advances.",
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
            SizedBox(height: 17.v),
            _buildInputField2(context),
            SizedBox(height: 17.v),
            _buildInputField3(context),
            SizedBox(height: 17.v),
            _buildInputField4(context),
            SizedBox(height: 18.v),
            _buildInputField5(context),
            SizedBox(height: 20.v),
            CustomElevatedButton(
              height: 40.v,
              text: "Add Card",
              buttonStyle: CustomButtonStyles.fillPrimaryTL20,
              buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
            ),
            SizedBox(height: 5.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardSetting(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Card Setting",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 12.v),
        Container(
          width: 325.h,
          margin: EdgeInsets.only(right: 26.h),
          padding: EdgeInsets.all(20.h),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder17,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup165,
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      top: 4.v,
                      bottom: 2.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Block Card",
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "Instantly block your card",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(right: 75.h),
                child: _buildGoogleGlassLogo(
                  context,
                  addToGooglePay: "Change Pic Code",
                  withdrawWithout: "Withdraw without any card",
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(right: 75.h),
                child: _buildGoogleGlassLogo(
                  context,
                  addToGooglePay: "Add to Google Pay",
                  withdrawWithout: "Withdraw without any card",
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(right: 75.h),
                child: _buildGoogleGlassLogo(
                  context,
                  addToGooglePay: "Add to Apple Pay",
                  withdrawWithout: "Withdraw without any card",
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(right: 75.h),
                child: _buildGoogleGlassLogo(
                  context,
                  addToGooglePay: "Add to Apple Store",
                  withdrawWithout: "Withdraw without any card",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildGoogleGlassLogo(
    BuildContext context, {
    required String addToGooglePay,
    required String withdrawWithout,
  }) {
    return Row(
      children: [
        CustomIconButton(
          height: 45.adaptSize,
          width: 45.adaptSize,
          padding: EdgeInsets.all(12.h),
          child: CustomImageView(
            imagePath: ImageConstant.img003GoogleGlassLogo,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 5.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  addToGooglePay,
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: appTheme.blueGray900,
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  withdrawWithout,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.blueGray40001,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
