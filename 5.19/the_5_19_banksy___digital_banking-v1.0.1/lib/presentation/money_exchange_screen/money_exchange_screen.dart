import 'models/money_exchange_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/custom_drop_down.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/custom_icon_button.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/custom_text_form_field.dart';
import 'provider/money_exchange_provider.dart';

class MoneyExchangeScreen extends StatefulWidget {
  const MoneyExchangeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MoneyExchangeScreenState createState() => MoneyExchangeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MoneyExchangeProvider(),
      child: MoneyExchangeScreen(),
    );
  }
}

class MoneyExchangeScreenState extends State<MoneyExchangeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 33.v,
          ),
          child: Column(
            children: [
              _buildInputs(context),
              SizedBox(height: 42.v),
              _buildFrame(context),
              SizedBox(height: 22.v),
              _buildCountry(context),
              SizedBox(height: 43.v),
              CustomElevatedButton(
                text: "lbl_exchange".tr.toUpperCase(),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgFavoriteOnprimary,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 6.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_money_exchange2".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildInputs(BuildContext context) {
    return SizedBox(
      height: 91.v,
      width: 366.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "lbl_from".tr,
                  style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                ),
                SizedBox(height: 6.v),
                Selector<MoneyExchangeProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.inputsController,
                  builder: (context, inputsController, child) {
                    return CustomTextFormField(
                      width: 173.h,
                      controller: inputsController,
                      hintText: "lbl_usd".tr,
                    );
                  },
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "lbl_to".tr,
                  style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                ),
                SizedBox(height: 6.v),
                Selector<MoneyExchangeProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.priceController,
                  builder: (context, priceController, child) {
                    return CustomTextFormField(
                      width: 173.h,
                      controller: priceController,
                      hintText: "lbl_bdt".tr,
                      textInputAction: TextInputAction.done,
                    );
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 12.v),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillPrimaryTL20,
              alignment: Alignment.bottomCenter,
              child: CustomImageView(
                imagePath: ImageConstant.imgTelevisionOnprimary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "lbl_exchange_rate".tr,
          style: CustomTextStyles.headlineSmallExtraBold,
        ),
        Selector<MoneyExchangeProvider, MoneyExchangeModel?>(
          selector: (
            context,
            provider,
          ) =>
              provider.moneyExchangeModelObj,
          builder: (context, moneyExchangeModelObj, child) {
            return CustomDropDown(
              width: 90.h,
              icon: Container(
                margin: EdgeInsets.only(left: 8.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFavoriteOnprimarycontainer12x12,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                ),
              ),
              hintText: "lbl_usa".tr,
              items: moneyExchangeModelObj?.dropdownItemList ?? [],
              prefix: Container(
                margin: EdgeInsets.only(right: 8.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15.h,
                  ),
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEllipse110,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 30.v,
              ),
              onChanged: (value) {
                context.read<MoneyExchangeProvider>().onSelected(value);
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCountry(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "lbl_country".tr,
              style: CustomTextStyles.titleMediumGray400,
            ),
            Spacer(
              flex: 78,
            ),
            Text(
              "lbl_usd".tr,
              style: CustomTextStyles.titleMediumGray400,
            ),
            Spacer(
              flex: 21,
            ),
            Text(
              "lbl_cr".tr,
              style: CustomTextStyles.titleMediumGray400,
            ),
          ],
        ),
        SizedBox(height: 22.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 18.v,
              width: 24.h,
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder2,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 18.v,
                width: 24.h,
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                bottom: 2.v,
              ),
              child: Text(
                "lbl_vietnamese".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Spacer(
              flex: 72,
            ),
            Text(
              "lbl_1".tr,
              style: CustomTextStyles.bodyLargeOnPrimaryContainer,
            ),
            Spacer(
              flex: 27,
            ),
            Text(
              "lbl_1_746".tr,
              style: CustomTextStyles.titleMediumGreen600,
            ),
          ],
        ),
        SizedBox(height: 19.v),
        Divider(),
        SizedBox(height: 15.v),
        _buildTelevision(
          context,
          television: ImageConstant.imgMicrophone,
          vietnamese: "lbl_england".tr,
          oneThousandFourHundredThree: "lbl_1".tr,
          oneThousandSevenHundredFortySi: "lbl_34_56".tr,
        ),
        SizedBox(height: 19.v),
        Divider(),
        SizedBox(height: 15.v),
        _buildTelevision(
          context,
          television: ImageConstant.imgTelevisionRedA200,
          vietnamese: "lbl_france".tr,
          oneThousandFourHundredThree: "lbl_1".tr,
          oneThousandSevenHundredFortySi: "lbl_12_09".tr,
        ),
        SizedBox(height: 19.v),
        Divider(),
        SizedBox(height: 15.v),
        _buildTelevision(
          context,
          television: ImageConstant.imgTelevisionLightGreenA700,
          vietnamese: "lbl_afghanistan".tr,
          oneThousandFourHundredThree: "lbl_1".tr,
          oneThousandSevenHundredFortySi: "lbl_1_746".tr,
        ),
        SizedBox(height: 19.v),
        Divider(),
        SizedBox(height: 15.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 17.v,
              width: 23.h,
              decoration: AppDecoration.outlineGray10001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder2,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgPathClipped,
                height: 17.v,
                width: 23.h,
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "lbl_japan".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Spacer(
              flex: 79,
            ),
            Text(
              "lbl_1".tr,
              style: CustomTextStyles.bodyLargeOnPrimaryContainer,
            ),
            Spacer(
              flex: 20,
            ),
            Text(
              "lbl_2_234".tr,
              style: CustomTextStyles.titleMediumGreen600,
            ),
          ],
        ),
        SizedBox(height: 19.v),
        Divider(),
        SizedBox(height: 15.v),
        _buildTelevision(
          context,
          television: ImageConstant.imgThumbsUpGray10001,
          vietnamese: "lbl_korea".tr,
          oneThousandFourHundredThree: "lbl_1".tr,
          oneThousandSevenHundredFortySi: "lbl_1_746".tr,
        ),
        SizedBox(height: 19.v),
        Divider(),
        SizedBox(height: 15.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 18.v,
              width: 24.h,
              margin: EdgeInsets.only(top: 2.v),
              padding: EdgeInsets.all(1.h),
              decoration: AppDecoration.fillRedA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder2,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgSignal,
                height: 7.adaptSize,
                width: 7.adaptSize,
                alignment: Alignment.topLeft,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "lbl_china".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Spacer(
              flex: 77,
            ),
            Text(
              "lbl_1".tr,
              style: CustomTextStyles.bodyLargeOnPrimaryContainer,
            ),
            Spacer(
              flex: 22,
            ),
            Text(
              "lbl_1_746".tr,
              style: CustomTextStyles.titleMediumGreen600,
            ),
          ],
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTelevision(
    BuildContext context, {
    required String television,
    required String vietnamese,
    required String oneThousandFourHundredThree,
    required String oneThousandSevenHundredFortySi,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: television,
          height: 18.v,
          width: 24.h,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            bottom: 2.v,
          ),
          child: Text(
            vietnamese,
            style: theme.textTheme.titleSmall!.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        Spacer(
          flex: 77,
        ),
        Text(
          oneThousandFourHundredThree,
          style: CustomTextStyles.bodyLargeOnPrimaryContainer.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
        Spacer(
          flex: 22,
        ),
        Text(
          oneThousandSevenHundredFortySi,
          style: CustomTextStyles.titleMediumGreen600.copyWith(
            color: appTheme.green600,
          ),
        ),
      ],
    );
  }
}
