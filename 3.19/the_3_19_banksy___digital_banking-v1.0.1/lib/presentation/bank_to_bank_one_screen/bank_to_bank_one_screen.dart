import 'bloc/bank_to_bank_one_bloc.dart';
import 'models/bank_to_bank_one_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_3_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_3_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_3_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_3_19_banksy___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_3_19_banksy___digital_banking/widgets/custom_icon_button.dart';

class BankToBankOneScreen extends StatelessWidget {
  const BankToBankOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BankToBankOneBloc>(
        create: (context) => BankToBankOneBloc(
            BankToBankOneState(bankToBankOneModelObj: BankToBankOneModel()))
          ..add(BankToBankOneInitialEvent()),
        child: BankToBankOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BankToBankOneBloc, BankToBankOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 33.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_select_bank_to_send".tr,
                            style: CustomTextStyles.headlineSmallExtraBold),
                        SizedBox(height: 10.v),
                        Text("msg_select_a_account".tr,
                            style: theme.textTheme.bodyMedium),
                        SizedBox(height: 41.v),
                        _buildJonathanAnderson(context),
                        SizedBox(height: 24.v),
                        _buildCard(context),
                        SizedBox(height: 5.v)
                      ])),
              bottomNavigationBar: _buildContinue(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_bank_to_bank2".tr));
  }

  /// Section Widget
  Widget _buildJonathanAnderson(BuildContext context) {
    return SizedBox(
        height: 200.v,
        width: 366.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          _buildCard(context),
          CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillOnPrimaryTL20,
              alignment: Alignment.bottomCenter,
              child:
                  CustomImageView(imagePath: ImageConstant.imgCheckmarkPrimary))
        ]));
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_continue".tr.toUpperCase(),
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 56.v),
        onPressed: () {
          onTapContinue(context);
        });
  }

  /// Common widget
  Widget _buildCard(
    BuildContext context, {
    Function? onTapCard,
  }) {
    return GestureDetector(
        onTap: () {
          onTapCard!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 23.v),
            decoration: AppDecoration.gradientTealToTeal,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("msg_jonathan_anderson".tr,
                  style: theme.textTheme.labelLarge),
              SizedBox(height: 30.v),
              Text("msg_1222_3443_9881_1222".tr,
                  style: CustomTextStyles.titleMediumOnPrimary),
              SizedBox(height: 30.v),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_balance".tr,
                                  style: theme.textTheme.labelSmall),
                              SizedBox(height: 3.v),
                              Text("lbl_31_250".tr,
                                  style: theme.textTheme.labelLarge)
                            ])),
                    CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(top: 12.v))
                  ])
            ])));
  }

  /// Navigates to the cardDetailsScreen when the action is triggered.
  onTapCard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.cardDetailsScreen,
    );
  }

  /// Navigates to the cardDetailsScreen when the action is triggered.
  onTapCard1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.cardDetailsScreen,
    );
  }

  /// Navigates to the bankToBankTwoScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.bankToBankTwoScreen,
    );
  }
}