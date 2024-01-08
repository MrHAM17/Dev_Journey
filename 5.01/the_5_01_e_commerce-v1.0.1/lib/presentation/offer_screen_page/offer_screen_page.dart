import '../offer_screen_page/widgets/offerscreen_item_widget.dart';import 'models/offer_screen_model.dart';import 'models/offerscreen_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/appbar_title.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/custom_app_bar.dart';import 'provider/offer_screen_provider.dart';class OfferScreenPage extends StatefulWidget {const OfferScreenPage({Key? key}) : super(key: key);

@override OfferScreenPageState createState() =>  OfferScreenPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => OfferScreenProvider(), child: OfferScreenPage()); } 
 }
class OfferScreenPageState extends State<OfferScreenPage> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 28.v), child: Column(children: [_buildCuponPromotion(context), SizedBox(height: 16.v), _buildOfferScreen(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(title: AppbarTitle(text: "lbl_offer".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgNotificationIcon, margin: EdgeInsets.fromLTRB(13.h, 16.v, 13.h, 15.v), onTap: () {onTapNotificationIcon(context);})]); } 
/// Section Widget
Widget _buildCuponPromotion(BuildContext context) { return Container(width: 343.h, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), SizedBox(width: 201.h, child: Text("msg_use_megsl_cupon".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleMediumOnPrimaryContainer.copyWith(height: 1.50)))])); } 
/// Section Widget
Widget _buildOfferScreen(BuildContext context) { return Consumer<OfferScreenProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: provider.offerScreenModelObj.offerscreenItemList.length, itemBuilder: (context, index) {OfferscreenItemModel model = provider.offerScreenModelObj.offerscreenItemList[index]; return OfferscreenItemWidget(model);});}); } 
/// Navigates to the notificationScreen when the action is triggered.
onTapNotificationIcon(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationScreen, ); } 
 }
