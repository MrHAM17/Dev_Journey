import '../my_home_page/widgets/list_item_widget.dart';import 'controller/my_home_controller.dart';import 'models/list_item_model.dart';import 'models/my_home_model.dart';import 'package:flutter/material.dart';import 'package:the_4_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_4_21_vertex___real_estate_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_4_21_vertex___real_estate_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:the_4_21_vertex___real_estate_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_4_21_vertex___real_estate_app/widgets/custom_outlined_button.dart';
// ignore_for_file: must_be_immutable
class MyHomePage extends StatelessWidget {MyHomePage({Key? key}) : super(key: key);

MyHomeController controller = Get.put(MyHomeController(MyHomeModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [_buildList(), SizedBox(height: 24.v), CustomOutlinedButton(text: "msg_add_new_property".tr, leftIcon: Container(margin: EdgeInsets.only(right: 10.h), child: CustomImageView(imagePath: ImageConstant.imgPlusPrimary, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlinePrimaryTL10, buttonTextStyle: CustomTextStyles.titleMediumPrimaryBold, onPressed: () {onTapAddNewProperty();}), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_my_home".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildList() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.myHomeModelObj.value.listItemList.value.length, itemBuilder: (context, index) {ListItemModel model = controller.myHomeModelObj.value.listItemList.value[index]; return ListItemWidget(model, onTapProperty: () {onTapProperty();});})); } 
/// Navigates to the productDetailsScreen when the action is triggered.
onTapProperty() { Get.toNamed(AppRoutes.productDetailsScreen); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the addNewPropertyAddressScreen when the action is triggered.
onTapAddNewProperty() { Get.toNamed(AppRoutes.addNewPropertyAddressScreen, ); } 
 }
