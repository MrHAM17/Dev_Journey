import '../add_new_property_time_to_sell_screen/widgets/addnewpropertytimetosell_item_widget.dart';import 'bloc/add_new_property_time_to_sell_bloc.dart';import 'models/add_new_property_time_to_sell_model.dart';import 'models/addnewpropertytimetosell_item_model.dart';import 'package:flutter/material.dart';import 'package:the_3_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_3_21_vertex___real_estate_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_3_21_vertex___real_estate_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:the_3_21_vertex___real_estate_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_21_vertex___real_estate_app/widgets/custom_elevated_button.dart';class AddNewPropertyTimeToSellScreen extends StatelessWidget {const AddNewPropertyTimeToSellScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<AddNewPropertyTimeToSellBloc>(create: (context) => AddNewPropertyTimeToSellBloc(AddNewPropertyTimeToSellState(addNewPropertyTimeToSellModelObj: AddNewPropertyTimeToSellModel()))..add(AddNewPropertyTimeToSellInitialEvent()), child: AddNewPropertyTimeToSellScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [_buildAddressAndProgress(context), SizedBox(height: 16.v), Container(height: 6.v, width: 327.h, decoration: BoxDecoration(color: appTheme.gray300, borderRadius: BorderRadius.circular(3.h)), child: ClipRRect(borderRadius: BorderRadius.circular(3.h), child: LinearProgressIndicator(value: 0.37, backgroundColor: appTheme.gray300, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary)))), SizedBox(height: 26.v), Align(alignment: Alignment.centerLeft, child: Text("msg_how_soon_do_you".tr, style: CustomTextStyles.titleMediumBold_1)), SizedBox(height: 13.v), _buildAddNewPropertyTimetosell(context)])), bottomNavigationBar: _buildBTN(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_add_new_property".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildAddressAndProgress(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 6.v), child: Text("lbl_time_to_sell".tr, style: theme.textTheme.titleSmall)), CustomElevatedButton(height: 33.v, width: 78.h, text: "lbl_03_08".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL16, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700)]); } 
/// Section Widget
Widget _buildAddNewPropertyTimetosell(BuildContext context) { return BlocSelector<AddNewPropertyTimeToSellBloc, AddNewPropertyTimeToSellState, AddNewPropertyTimeToSellModel?>(selector: (state) => state.addNewPropertyTimeToSellModelObj, builder: (context, addNewPropertyTimeToSellModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 8.v);}, itemCount: addNewPropertyTimeToSellModelObj?.addnewpropertytimetosellItemList.length ?? 0, itemBuilder: (context, index) {AddnewpropertytimetosellItemModel model = addNewPropertyTimeToSellModelObj?.addnewpropertytimetosellItemList[index] ?? AddnewpropertytimetosellItemModel(); return AddnewpropertytimetosellItemWidget(model);});}); } 
/// Section Widget
Widget _buildBTN(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: CustomElevatedButton(text: "lbl_next".tr, onPressed: () {onTapNext(context);})); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the addNewPropertyReasonSellingHomeScreen when the action is triggered.
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addNewPropertyReasonSellingHomeScreen, ); } 
 }