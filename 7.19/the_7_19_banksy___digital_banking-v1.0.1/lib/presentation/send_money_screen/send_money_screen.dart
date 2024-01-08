import '../send_money_screen/widgets/nineteen_item_widget.dart';
import '../send_money_screen/widgets/profilelist_item_widget.dart';
import '../send_money_screen/widgets/twentytwo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 33.v),
                child: Column(children: [
                  _buildThirtyEight(context),
                  SizedBox(height: 39.v),
                  _buildForty(context),
                  SizedBox(height: 24.v),
                  _buildB(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "Money Transfer "),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgPlus,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 6.v),
              onTap: () {
                onTapPlus(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildThirtyEight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Favorite", style: theme.textTheme.headlineSmall),
          SizedBox(height: 17.v),
          SizedBox(
              height: 60.v,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 20.h);
                  },
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ProfilelistItemWidget();
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildForty(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("All Contact", style: theme.textTheme.headlineSmall),
          SizedBox(height: 25.v),
          Container(
              margin: EdgeInsets.only(right: 14.h),
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
              decoration: AppDecoration.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("A", style: theme.textTheme.headlineMedium),
                    SizedBox(height: 9.v),
                    Divider(color: appTheme.gray400),
                    SizedBox(height: 19.v),
                    ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 16.v);
                        },
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return NineteenItemWidget(onTapAngelinaDruff: () {
                            onTapAngelinaDruff(context);
                          });
                        }),
                    SizedBox(height: 3.v)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildB(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
        decoration: AppDecoration.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("B", style: theme.textTheme.headlineMedium),
          SizedBox(height: 9.v),
          Divider(color: appTheme.gray400),
          SizedBox(height: 19.v),
          ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 16.v);
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return TwentytwoItemWidget();
              }),
          SizedBox(height: 3.v)
        ]));
  }

  /// Navigates to the enterMoneyScreen when the action is triggered.
  onTapAngelinaDruff(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.enterMoneyScreen);
  }

  /// Navigates to the addPersonScreen when the action is triggered.
  onTapPlus(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addPersonScreen);
  }
}
