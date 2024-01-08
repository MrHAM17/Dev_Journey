import '../select_virtual_app_screen/widgets/selectvirtualapp_item_widget.dart';import 'bloc/select_virtual_app_bloc.dart';import 'models/select_virtual_app_model.dart';import 'models/selectvirtualapp_item_model.dart';import 'package:flutter/material.dart';import 'package:the_3_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_3_21_vertex___real_estate_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_3_21_vertex___real_estate_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:the_3_21_vertex___real_estate_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_3_21_vertex___real_estate_app/widgets/custom_elevated_button.dart';class SelectVirtualAppScreen extends StatelessWidget {const SelectVirtualAppScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<SelectVirtualAppBloc>(create: (context) => SelectVirtualAppBloc(SelectVirtualAppState(selectVirtualAppModelObj: SelectVirtualAppModel()))..add(SelectVirtualAppInitialEvent()), child: SelectVirtualAppScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 24.v), _buildSelectVirtualApp(context), Spacer()])), bottomNavigationBar: _buildBTN(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_select_virtual_app".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildSelectVirtualApp(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: BlocSelector<SelectVirtualAppBloc, SelectVirtualAppState, SelectVirtualAppModel?>(selector: (state) => state.selectVirtualAppModelObj, builder: (context, selectVirtualAppModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: selectVirtualAppModelObj?.selectvirtualappItemList.length ?? 0, itemBuilder: (context, index) {SelectvirtualappItemModel model = selectVirtualAppModelObj?.selectvirtualappItemList[index] ?? SelectvirtualappItemModel(); return SelectvirtualappItemWidget(model);});})); } 
/// Section Widget
Widget _buildBTN(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: CustomElevatedButton(text: "lbl_next".tr, onPressed: () {onTapNext(context);})); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the selectAppAlarmScreen when the action is triggered.
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.selectAppAlarmScreen, ); } 
 }
