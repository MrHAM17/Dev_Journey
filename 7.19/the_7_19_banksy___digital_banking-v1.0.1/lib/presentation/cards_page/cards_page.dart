import '../cards_page/widgets/cards_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.bg,
                child: Column(children: [
                  SizedBox(height: 34.v),
                  _buildCards(context),
                  Spacer()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgGrid,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "Your Cards"),
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
  Widget _buildCards(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 36.v);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return CardsItemWidget(onTapCard: () {
                onTapCard(context);
              });
            }));
  }

  /// Navigates to the cardDetailsScreen when the action is triggered.
  onTapCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cardDetailsScreen);
  }

  /// Navigates to the addCardOneScreen when the action is triggered.
  onTapPlus(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addCardOneScreen);
  }
}
