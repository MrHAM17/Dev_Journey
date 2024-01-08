import '../refund_method_screen/widgets/refundmethod_item_widget.dart';import 'models/refund_method_model.dart';import 'models/refundmethod_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/custom_elevated_button.dart';import 'provider/refund_method_provider.dart';class RefundMethodScreen extends StatefulWidget {const RefundMethodScreen({Key? key}) : super(key: key);

@override RefundMethodScreenState createState() =>  RefundMethodScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => RefundMethodProvider(), child: RefundMethodScreen()); } 
 }
class RefundMethodScreenState extends State<RefundMethodScreen> {@override void initState() { super.initState();// TODO: implement Actions
 } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 22.v), child: Column(children: [SizedBox(height: 4.v), Align(alignment: Alignment.centerLeft, child: Container(width: 357.h, margin: EdgeInsets.only(right: 22.h), child: Text("msg_please_select_a".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyLarge18.copyWith(height: 1.50)))), SizedBox(height: 22.v), _buildRefundMethod(context), Spacer(), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_paid_479_5".tr, style: CustomTextStyles.bodyLarge18), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_refund_383_8".tr, style: theme.textTheme.titleMedium))])])), bottomNavigationBar: _buildConfirmCancellation(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "msg_cancel_hotel_booking".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildRefundMethod(BuildContext context) { return Consumer<RefundMethodProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 28.v);}, itemCount: provider.refundMethodModelObj.refundmethodItemList.length, itemBuilder: (context, index) {RefundmethodItemModel model = provider.refundMethodModelObj.refundmethodItemList[index]; return RefundmethodItemWidget(model);});}); } 
/// Section Widget
Widget _buildConfirmCancellation(BuildContext context) { return CustomElevatedButton(text: "msg_confirm_cancellation".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 48.v)); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }
