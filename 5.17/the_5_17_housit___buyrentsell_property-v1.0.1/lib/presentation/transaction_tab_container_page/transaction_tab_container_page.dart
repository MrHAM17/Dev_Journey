import 'models/transaction_tab_container_model.dart';import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/listings_page/listings_page.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';import 'provider/transaction_tab_container_provider.dart';class TransactionTabContainerPage extends StatefulWidget {const TransactionTabContainerPage({Key? key}) : super(key: key);

@override TransactionTabContainerPageState createState() =>  TransactionTabContainerPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => TransactionTabContainerProvider(), child: TransactionTabContainerPage()); } 
 }

// ignore_for_file: must_be_immutable
class TransactionTabContainerPageState extends State<TransactionTabContainerPage> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 17.v), SizedBox(height: 100.adaptSize, width: 100.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgShape34, height: 100.adaptSize, width: 100.adaptSize, radius: BorderRadius.circular(50.h), alignment: Alignment.center), CustomIconButton(height: 30.adaptSize, width: 30.adaptSize, padding: EdgeInsets.all(9.h), decoration: IconButtonStyleHelper.fillBlueGrayTL15, alignment: Alignment.bottomRight, onTap: () {onTapBtnEdit(context);}, child: CustomImageView(imagePath: ImageConstant.imgEdit))])), SizedBox(height: 11.v), Text("msg_jonathan_anderson".tr, style: CustomTextStyles.titleSmallBold), SizedBox(height: 7.v), Text("msg_jonathan_email_com".tr, style: CustomTextStyles.labelMediumBluegray600SemiBold), SizedBox(height: 13.v), _buildInformation(context), SizedBox(height: 20.v), _buildTabview(context), _buildTabBarView(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: AppbarSubtitle(text: "lbl_profile".tr), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSearch, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 3.v))]); } 
/// Section Widget
Widget _buildInformation(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildInformationReviews(context), Padding(padding: EdgeInsets.only(left: 10.h), child: _buildInformationReviews(context)), Padding(padding: EdgeInsets.only(left: 10.h), child: _buildInformationReviews(context))])); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 50.v, width: 327.h, decoration: BoxDecoration(color: appTheme.gray100, borderRadius: BorderRadius.circular(25.h)), child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.blueGray80001, labelStyle: TextStyle(fontSize: 12.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w600), unselectedLabelColor: theme.colorScheme.onPrimaryContainer, unselectedLabelStyle: TextStyle(fontSize: 12.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w600), indicatorPadding: EdgeInsets.all(9.0.h), indicator: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(16.h)), tabs: [Tab(child: Text("lbl_transaction".tr)), Tab(child: Text("lbl_listings2".tr)), Tab(child: Text("lbl_sold".tr))])); } 
/// Section Widget
Widget _buildTabBarView(BuildContext context) { return Expanded(child: SizedBox(height: 326.v, child: TabBarView(controller: tabviewController, children: [ListingsPage(), ListingsPage(), ListingsPage()]))); } 
/// Common widget
Widget _buildInformationReviews(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 14.v), decoration: AppDecoration.outlineBluegray50.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Column(mainAxisSize: MainAxisSize.min, children: [Text("lbl_12".tr, style: CustomTextStyles.titleSmallBold), SizedBox(height: 5.v), Text("lbl_sold".tr, style: CustomTextStyles.labelLargeBluegray600)])); } 
/// Navigates to the editProfileScreen when the action is triggered.
onTapBtnEdit(BuildContext context) { NavigatorService.pushNamed(AppRoutes.editProfileScreen, ); } 
 }
