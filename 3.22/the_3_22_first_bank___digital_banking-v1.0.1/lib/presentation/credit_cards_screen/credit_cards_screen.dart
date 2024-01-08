import '../credit_cards_screen/widgets/balance2_item_widget.dart';
import '../credit_cards_screen/widgets/creditcards_item_widget.dart';
import 'bloc/credit_cards_bloc.dart';
import 'models/balance2_item_model.dart';
import 'models/credit_cards_model.dart';
import 'models/creditcards_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:the_3_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_3_22_first_bank___digital_banking/core/utils/validation_functions.dart';
import 'package:the_3_22_first_bank___digital_banking/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_3_22_first_bank___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_3_22_first_bank___digital_banking/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:the_3_22_first_bank___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_3_22_first_bank___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_3_22_first_bank___digital_banking/widgets/custom_icon_button.dart';
import 'package:the_3_22_first_bank___digital_banking/widgets/custom_search_view.dart';
import 'package:the_3_22_first_bank___digital_banking/widgets/custom_text_form_field.dart';

class CreditCardsScreen extends StatelessWidget {
  CreditCardsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CreditCardsBloc>(
      create: (context) => CreditCardsBloc(CreditCardsState(
        creditCardsModelObj: CreditCardsModel(),
      ))
        ..add(CreditCardsInitialEvent()),
      child: CreditCardsScreen(),
    );
  }

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
                              "lbl_add_new_card".tr,
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
              text: "lbl_credit_cards".tr,
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
            child: BlocSelector<CreditCardsBloc, CreditCardsState,
                TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "msg_search_for_something".tr,
                );
              },
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
              "lbl_my_cards".tr,
              style: theme.textTheme.titleMedium,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Text(
                "lbl_see_all".tr,
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
    return BlocBuilder<CreditCardsBloc, CreditCardsState>(
      builder: (context, state) {
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
              state.sliderIndex = index;
            },
          ),
          itemCount: state.creditCardsModelObj?.balance2ItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            Balance2ItemModel model =
                state.creditCardsModelObj?.balance2ItemList[index] ??
                    Balance2ItemModel();
            return Balance2ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCardExpenseStatistics(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_card_expense_statistics".tr,
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
                            "lbl_dbl_bank".tr,
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
                            "lbl_brc_bank".tr,
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
                                "lbl_abm_bank".tr,
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
                                "lbl_mcp_bank".tr,
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
          "lbl_card_list".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 14.v),
        Padding(
          padding: EdgeInsets.only(right: 24.h),
          child: BlocSelector<CreditCardsBloc, CreditCardsState,
              CreditCardsModel?>(
            selector: (state) => state.creditCardsModelObj,
            builder: (context, creditCardsModelObj) {
              return ListView.separated(
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
                itemCount: creditCardsModelObj?.creditcardsItemList.length ?? 0,
                itemBuilder: (context, index) {
                  CreditcardsItemModel model =
                      creditCardsModelObj?.creditcardsItemList[index] ??
                          CreditcardsItemModel();
                  return CreditcardsItemWidget(
                    model,
                  );
                },
              );
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
          "lbl_card_type".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        BlocSelector<CreditCardsBloc, CreditCardsState, TextEditingController?>(
          selector: (state) => state.classicController,
          builder: (context, classicController) {
            return CustomTextFormField(
              controller: classicController,
              hintText: "lbl_classic".tr,
            );
          },
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
          "lbl_name_on_card".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        BlocSelector<CreditCardsBloc, CreditCardsState, TextEditingController?>(
          selector: (state) => state.nameController,
          builder: (context, nameController) {
            return CustomTextFormField(
              controller: nameController,
              hintText: "lbl_my_cards".tr,
            );
          },
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
          "lbl_card_number".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        BlocSelector<CreditCardsBloc, CreditCardsState, TextEditingController?>(
          selector: (state) => state.cardNumberController,
          builder: (context, cardNumberController) {
            return CustomTextFormField(
              controller: cardNumberController,
              hintText: "msg".tr,
              textInputType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: true,
            );
          },
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
          "lbl_expiration_date".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        BlocSelector<CreditCardsBloc, CreditCardsState, TextEditingController?>(
          selector: (state) => state.expirationDateController,
          builder: (context, expirationDateController) {
            return CustomTextFormField(
              controller: expirationDateController,
              hintText: "lbl_25_january_2025".tr,
              textInputAction: TextInputAction.done,
            );
          },
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
                "msg_credit_card_generally".tr,
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
              text: "lbl_add_card".tr,
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
          "lbl_card_setting".tr,
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
                          "lbl_block_card".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "msg_instantly_block".tr,
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
                  addToGooglePay: "lbl_change_pic_code".tr,
                  withdrawWithout: "msg_withdraw_without".tr,
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(right: 75.h),
                child: _buildGoogleGlassLogo(
                  context,
                  addToGooglePay: "msg_add_to_google_pay".tr,
                  withdrawWithout: "msg_withdraw_without".tr,
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(right: 75.h),
                child: _buildGoogleGlassLogo(
                  context,
                  addToGooglePay: "msg_add_to_apple_pay".tr,
                  withdrawWithout: "msg_withdraw_without".tr,
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(right: 75.h),
                child: _buildGoogleGlassLogo(
                  context,
                  addToGooglePay: "msg_add_to_apple_store".tr,
                  withdrawWithout: "msg_withdraw_without".tr,
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
