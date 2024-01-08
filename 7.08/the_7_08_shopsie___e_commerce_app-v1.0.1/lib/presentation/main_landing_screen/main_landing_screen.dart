import '../main_landing_screen/widgets/frame_item_widget.dart';
import '../main_landing_screen/widgets/mainlanding_item_widget.dart';
import '../main_landing_screen/widgets/price_item_widget.dart';
import '../main_landing_screen/widgets/thirtytwo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/app_bar/appbar_title.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/custom_drop_down.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/custom_elevated_button.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/custom_outlined_button.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/custom_text_form_field.dart';

class MainLandingScreen extends StatelessWidget {
  MainLandingScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList2 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildSeasonSale(context),
                  SizedBox(height: 66.v),
                  Text(
                    "Trending now".toUpperCase(),
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 34.v),
                  _buildCategoriesOption(context),
                  SizedBox(height: 32.v),
                  _buildFrame(context),
                  SizedBox(height: 54.v),
                  _buildActualCategories(context),
                  SizedBox(height: 48.v),
                  _buildOnlyTrustedBrands(context),
                  SizedBox(height: 45.v),
                  _buildNewArrival(context),
                  SizedBox(height: 43.v),
                  Text(
                    "Recomended looks for you".toUpperCase(),
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 44.v),
                  _buildRecommendationFilters(context),
                  SizedBox(height: 21.v),
                  _buildRecomended(context),
                  SizedBox(height: 49.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowLeft,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(left: 32.h),
                      ),
                    ],
                  ),
                  SizedBox(height: 64.v),
                  _buildContact(context),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildFooter(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 32.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 12.h,
          top: 22.v,
          bottom: 26.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Shopsie",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame5732,
          margin: EdgeInsets.fromLTRB(16.h, 21.v, 16.h, 26.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSeasonSale(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray,
      child: Column(
        children: [
          SizedBox(height: 24.v),
          SizedBox(
            height: 362.v,
            width: 360.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage61,
                  height: 362.v,
                  width: 360.h,
                  radius: BorderRadius.vertical(
                    top: Radius.circular(200.h),
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 59.h,
                      vertical: 13.v,
                    ),
                    decoration: AppDecoration.shadow.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL200,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 224.v),
                        Text(
                          "SEASON SALE".toUpperCase(),
                          style: theme.textTheme.displaySmall,
                        ),
                        SizedBox(height: 4.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "up to".toUpperCase(),
                                style: CustomTextStyles
                                    .titleMediumPrimaryContainer,
                              ),
                              TextSpan(
                                text: " ",
                              ),
                              TextSpan(
                                text: "60% Off".toUpperCase(),
                                style: CustomTextStyles.displaySmallLatoGray300,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32.v),
          CustomImageView(
            imagePath: ImageConstant.imgUnion,
            height: 48.v,
            width: 134.h,
          ),
          SizedBox(height: 48.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage60,
            height: 123.v,
            width: 390.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAll(BuildContext context) {
    return CustomElevatedButton(
      height: 32.v,
      width: 48.h,
      text: "All",
      buttonTextStyle: CustomTextStyles.bodyMediumPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildDresses(BuildContext context) {
    return CustomElevatedButton(
      height: 32.v,
      width: 80.h,
      text: "Dresses",
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: theme.textTheme.bodyMedium!,
    );
  }

  /// Section Widget
  Widget _buildAccessories(BuildContext context) {
    return CustomElevatedButton(
      height: 32.v,
      width: 103.h,
      text: "Accessories",
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: theme.textTheme.bodyMedium!,
    );
  }

  /// Section Widget
  Widget _buildDresses1(BuildContext context) {
    return CustomElevatedButton(
      height: 32.v,
      width: 66.h,
      text: "Dresses",
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: theme.textTheme.bodyMedium!,
    );
  }

  /// Section Widget
  Widget _buildCategoriesOption(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 53.h,
        ),
        child: Row(
          children: [
            _buildAll(context),
            _buildDresses(context),
            _buildAccessories(context),
            _buildDresses1(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return SizedBox(
      height: 296.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 16.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 10.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return FrameItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildActualCategories(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Text(
            "Actual categories".toUpperCase(),
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 34.v),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 24.v,
              );
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return ThirtytwoItemWidget();
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOnlyTrustedBrands(BuildContext context) {
    return Column(
      children: [
        Text(
          "Only trusted brands".toUpperCase(),
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 37.v),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 59.v,
            crossAxisCount: 3,
            mainAxisSpacing: 12.h,
            crossAxisSpacing: 12.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: 6,
          itemBuilder: (context, index) {
            return MainlandingItemWidget();
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNewArrival(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 48.h,
        vertical: 40.v,
      ),
      decoration: AppDecoration.fillBlack,
      child: Column(
        children: [
          SizedBox(height: 49.v),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 9.h),
            child: Column(
              children: [
                Text(
                  "NEW ARRIVAL".toUpperCase(),
                  style: CustomTextStyles.displaySmallGray40001,
                ),
                SizedBox(height: 8.v),
                Text(
                  "FALL 2021".toUpperCase(),
                  style: CustomTextStyles.bodyLargeGray40001,
                ),
              ],
            ),
          ),
          SizedBox(height: 86.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1381,
            height: 354.v,
            width: 292.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(279.h),
            ),
          ),
          SizedBox(height: 40.v),
          CustomElevatedButton(
            width: 174.h,
            text: "Explore",
            buttonStyle: CustomButtonStyles.fillPrimaryContainer,
            buttonTextStyle: CustomTextStyles.titleMediumPrimary,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecommendationFilters(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 82.h),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Gender",
                        style: CustomTextStyles.titleSmallGray600,
                      ),
                      TextSpan(
                        text: ": ",
                        style: CustomTextStyles.titleSmallBold_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomDropDown(
                    width: 63.h,
                    icon: Container(
                      margin: EdgeInsets.only(left: 6.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgChevronright2,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                      ),
                    ),
                    hintText: "Female",
                    items: dropdownItemList,
                    onChanged: (value) {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 23.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Style",
                          style: CustomTextStyles.titleSmallGray600,
                        ),
                        TextSpan(
                          text: ":",
                          style: CustomTextStyles.titleSmallBold_1,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomDropDown(
                    width: 83.h,
                    icon: Container(
                      margin: EdgeInsets.only(left: 6.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgChevronright2,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                      ),
                    ),
                    hintText: "Partywear",
                    items: dropdownItemList1,
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Price range",
                        style: CustomTextStyles.titleSmallGray600,
                      ),
                      TextSpan(
                        text: ":",
                        style: CustomTextStyles.titleSmallBold_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: CustomDropDown(
                  width: 31.h,
                  icon: Container(
                    margin: EdgeInsets.only(left: 2.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgChevronright2,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                    ),
                  ),
                  hintText: "All",
                  items: dropdownItemList2,
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBuyItNow(BuildContext context) {
    return CustomOutlinedButton(
      text: "Buy It Now",
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildRecomended(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(5.h),
      decoration: AppDecoration.outlineGray300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1385,
            height: 407.v,
            width: 346.h,
          ),
          SizedBox(height: 33.v),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              "In This look",
              style: CustomTextStyles.bodyLarge16,
            ),
          ),
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              right: 21.h,
            ),
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0.v),
                  child: SizedBox(
                    width: 243.h,
                    child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: appTheme.gray300,
                    ),
                  ),
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return PriceItemWidget();
              },
            ),
          ),
          SizedBox(height: 19.v),
          _buildBuyItNow(context),
          SizedBox(height: 18.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContact(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.fillIndigo,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage14,
            height: 204.v,
            width: 231.h,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
          SizedBox(height: 42.v),
          Text(
            "Get 20% off".toUpperCase(),
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 15.v),
          Text(
            "Leave your email and get a discount",
            style: CustomTextStyles.bodyMediumBluegray400,
          ),
          SizedBox(height: 28.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextFormField(
                width: 234.h,
                controller: emailController,
                hintText: "Email",
                hintStyle: CustomTextStyles.labelLargeBluegray400,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 12.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillPrimaryContainer,
                fillColor: theme.colorScheme.primaryContainer,
              ),
              CustomElevatedButton(
                height: 40.v,
                width: 114.h,
                text: "Subscribe",
                buttonTextStyle: CustomTextStyles.titleSmallPrimaryContainer,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFooter(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16.h,
        right: 22.h,
        bottom: 46.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Ⓒ 2021 Shopsie",
            style: theme.textTheme.bodySmall,
          ),
          Spacer(
            flex: 77,
          ),
          Text(
            "Privacy & Cookies",
            style: CustomTextStyles.bodySmallGray300,
          ),
          Spacer(
            flex: 22,
          ),
          Text(
            "Ts&Cs",
            style: CustomTextStyles.bodySmallGray300,
          ),
        ],
      ),
    );
  }
}
