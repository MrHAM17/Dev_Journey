import '../favorite_product_screen/widgets/favoriteproduct_item_widget.dart';import 'models/favorite_product_model.dart';import 'models/favoriteproduct_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/appbar_subtitle.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/custom_app_bar.dart';import 'provider/favorite_product_provider.dart';class FavoriteProductScreen extends StatefulWidget {const FavoriteProductScreen({Key? key}) : super(key: key);

@override FavoriteProductScreenState createState() =>  FavoriteProductScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => FavoriteProductProvider(), child: FavoriteProductScreen()); } 
 }
class FavoriteProductScreenState extends State<FavoriteProductScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(left: 16.h, top: 8.v, right: 16.h), child: Consumer<FavoriteProductProvider>(builder: (context, provider, child) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 283.v, crossAxisCount: 2, mainAxisSpacing: 13.h, crossAxisSpacing: 13.h), physics: NeverScrollableScrollPhysics(), itemCount: provider.favoriteProductModelObj.favoriteproductItemList.length, itemBuilder: (context, index) {FavoriteproductItemModel model = provider.favoriteProductModelObj.favoriteproductItemList[index]; return FavoriteproductItemWidget(model);});})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "msg_favorite_product".tr, margin: EdgeInsets.only(left: 12.h))); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
