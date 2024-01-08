import '../subscribe_screen/widgets/subscribe_item_widget.dart';import 'models/subscribe_item_model.dart';import 'models/subscribe_model.dart';import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'provider/subscribe_provider.dart';class SubscribeScreen extends StatefulWidget {const SubscribeScreen({Key? key}) : super(key: key);

@override SubscribeScreenState createState() =>  SubscribeScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SubscribeProvider(), child: SubscribeScreen()); } 
 }
class SubscribeScreenState extends State<SubscribeScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v), child: Column(children: [Text("msg_subscribe_to_premium".tr, style: CustomTextStyles.headlineLargeOnPrimaryContainer), SizedBox(height: 13.v), Container(width: 362.h, margin: EdgeInsets.only(left: 9.h, right: 8.h), child: Text("msg_enjoy_listening2".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumPrimaryMedium16.copyWith(height: 1.40))), SizedBox(height: 21.v), _buildSubscribe(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIconlyLightOutlineArrow, margin: EdgeInsets.fromLTRB(24.h, 11.v, 376.h, 11.v))); } 
/// Section Widget
Widget _buildSubscribe(BuildContext context) { return Consumer<SubscribeProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 12.0.v), child: SizedBox(width: 332.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray100)));}, itemCount: provider.subscribeModelObj.subscribeItemList.length, itemBuilder: (context, index) {SubscribeItemModel model = provider.subscribeModelObj.subscribeItemList[index]; return SubscribeItemWidget(model, onTapAutoLayoutVertical: () {onTapAutoLayoutVertical(context);});});}); } 
/// Navigates to the paymentMethodScreen when the action is triggered.
onTapAutoLayoutVertical(BuildContext context) { NavigatorService.pushNamed(AppRoutes.paymentMethodScreen); } 
 }
