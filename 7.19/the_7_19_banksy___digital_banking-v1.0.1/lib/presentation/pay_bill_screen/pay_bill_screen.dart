import '../pay_bill_screen/widgets/paybill_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_7_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';

class PayBillScreen extends StatelessWidget {
  const PayBillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 34.v, right: 24.h),
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 223.v,
                        crossAxisCount: 2,
                        mainAxisSpacing: 24.h,
                        crossAxisSpacing: 24.h),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return PaybillItemWidget(onTapOne: () {
                        onTapOne(context);
                      });
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "Pay Bills"));
  }

  /// Navigates to the electricBillScreen when the action is triggered.
  onTapOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.electricBillScreen);
  }
}
