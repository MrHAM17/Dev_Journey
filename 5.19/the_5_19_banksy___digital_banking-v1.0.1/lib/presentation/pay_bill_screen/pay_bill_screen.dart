import '../pay_bill_screen/widgets/paybill_item_widget.dart';
import 'models/pay_bill_model.dart';
import 'models/paybill_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'provider/pay_bill_provider.dart';

class PayBillScreen extends StatefulWidget {
  const PayBillScreen({Key? key}) : super(key: key);

  @override
  PayBillScreenState createState() => PayBillScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PayBillProvider(), child: PayBillScreen());
  }
}

class PayBillScreenState extends State<PayBillScreen> {
  @override
  void initState() {
    super.initState();
    NavigatorService.pushNamed(
      AppRoutes.electricBillScreen,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 34.v, right: 24.h),
                child: Consumer<PayBillProvider>(
                    builder: (context, provider, child) {
                  return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 223.v,
                          crossAxisCount: 2,
                          mainAxisSpacing: 24.h,
                          crossAxisSpacing: 24.h),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount:
                          provider.payBillModelObj.paybillItemList.length,
                      itemBuilder: (context, index) {
                        PaybillItemModel model =
                            provider.payBillModelObj.paybillItemList[index];
                        return PaybillItemWidget(model, onTapOne: () {
                          onTapOne(context);
                        });
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
        title: AppbarTitle(text: "lbl_pay_bills2".tr));
  }

  /// Navigates to the electricBillScreen when the action is triggered.
  onTapOne(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.electricBillScreen);
  }
}
