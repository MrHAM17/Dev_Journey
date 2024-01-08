import '../pay_bill_screen/widgets/paybill_item_widget.dart';
import 'models/paybill_item_model.dart';
import 'notifier/pay_bill_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';

class PayBillScreen extends ConsumerStatefulWidget {
  const PayBillScreen({Key? key}) : super(key: key);

  @override
  PayBillScreenState createState() => PayBillScreenState();
}

class PayBillScreenState extends ConsumerState<PayBillScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 34.v, right: 24.h),
                child: Consumer(builder: (context, ref, _) {
                  return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 223.v,
                          crossAxisCount: 2,
                          mainAxisSpacing: 24.h,
                          crossAxisSpacing: 24.h),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: ref
                              .watch(payBillNotifier)
                              .payBillModelObj
                              ?.paybillItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        PaybillItemModel model = ref
                                .watch(payBillNotifier)
                                .payBillModelObj
                                ?.paybillItemList[index] ??
                            PaybillItemModel();
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
