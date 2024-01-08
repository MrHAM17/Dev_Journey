import '../super_flash_sale_screen/widgets/superflashsale_item_widget.dart';import 'models/super_flash_sale_model.dart';import 'models/superflashsale_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/appbar_subtitle.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/custom_app_bar.dart';import 'provider/super_flash_sale_provider.dart';class SuperFlashSaleScreen extends StatefulWidget {const SuperFlashSaleScreen({Key? key}) : super(key: key);

@override SuperFlashSaleScreenState createState() =>  SuperFlashSaleScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SuperFlashSaleProvider(), child: SuperFlashSaleScreen()); } 
 }
class SuperFlashSaleScreenState extends State<SuperFlashSaleScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(left: 16.h, top: 26.v, right: 16.h), child: Consumer<SuperFlashSaleProvider>(builder: (context, provider, child) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: provider.superFlashSaleModelObj.superflashsaleItemList.length, itemBuilder: (context, index) {SuperflashsaleItemModel model = provider.superFlashSaleModelObj.superflashsaleItemList[index]; return SuperflashsaleItemWidget(model);});})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "msg_super_flash_sale".tr, margin: EdgeInsets.only(left: 12.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgNavExplore, margin: EdgeInsets.fromLTRB(16.h, 14.v, 16.h, 17.v), onTap: () {onTapSearchIcon(context);})]); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the searchScreen when the action is triggered.
onTapSearchIcon(BuildContext context) { NavigatorService.pushNamed(AppRoutes.searchScreen, ); } 
 }
