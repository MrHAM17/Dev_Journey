import '../review_product_screen/widgets/reviewproduct_item_widget.dart';import 'models/review_product_model.dart';import 'models/reviewproduct_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/appbar_subtitle.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_01_e_commerce/widgets/custom_elevated_button.dart';import 'provider/review_product_provider.dart';class ReviewProductScreen extends StatefulWidget {const ReviewProductScreen({Key? key}) : super(key: key);

@override ReviewProductScreenState createState() =>  ReviewProductScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ReviewProductProvider(), child: ReviewProductScreen()); } 
 }
class ReviewProductScreenState extends State<ReviewProductScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 9.v), child: Column(children: [SizedBox(height: 18.v), _buildReviewProduct(context)])), bottomNavigationBar: _buildWriteReview(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 43.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 19.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "lbl_5_review2".tr, margin: EdgeInsets.only(left: 12.h))); } 
/// Section Widget
Widget _buildReviewProduct(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 19.h, right: 23.h), child: Consumer<ReviewProductProvider>(builder: (context, provider, child) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 32.v);}, itemCount: provider.reviewProductModelObj.reviewproductItemList.length, itemBuilder: (context, index) {ReviewproductItemModel model = provider.reviewProductModelObj.reviewproductItemList[index]; return ReviewproductItemWidget(model);});}))); } 
/// Section Widget
Widget _buildWriteReview(BuildContext context) { return CustomElevatedButton(text: "lbl_write_review".tr, margin: EdgeInsets.only(left: 19.h, right: 13.h, bottom: 58.v), onPressed: () {onTapWriteReview(context);}); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the writeReviewFillScreen when the action is triggered.
onTapWriteReview(BuildContext context) { NavigatorService.pushNamed(AppRoutes.writeReviewFillScreen, ); } 
 }
