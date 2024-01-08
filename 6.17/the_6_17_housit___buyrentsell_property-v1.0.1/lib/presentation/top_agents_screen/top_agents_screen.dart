import '../top_agents_screen/widgets/datalist1_item_widget.dart';import 'models/datalist1_item_model.dart';import 'notifier/top_agents_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_6_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';class TopAgentsScreen extends ConsumerStatefulWidget {const TopAgentsScreen({Key? key}) : super(key: key);

@override TopAgentsScreenState createState() =>  TopAgentsScreenState();

 }
class TopAgentsScreenState extends ConsumerState<TopAgentsScreen> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 37.v), child: Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_top_estate_agent".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 8.v), Text("msg_find_the_best_recommendations".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 35.v), _buildDataList(context)])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 3.v, 301.h, 3.v), onTap: () {onTapArrowLeft(context);})); } 
/// Section Widget
Widget _buildDataList(BuildContext context) { return Consumer(builder: (context, ref, _) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 207.v, crossAxisCount: 2, mainAxisSpacing: 7.h, crossAxisSpacing: 7.h), physics: NeverScrollableScrollPhysics(), itemCount: ref.watch(topAgentsNotifier).topAgentsModelObj?.datalist1ItemList.length ?? 0, itemBuilder: (context, index) {Datalist1ItemModel model = ref.watch(topAgentsNotifier).topAgentsModelObj?.datalist1ItemList[index] ?? Datalist1ItemModel(); return Datalist1ItemWidget(model, onTapEstatesCardUser: () {onTapEstatesCardUser(context);});});}); } 
/// Navigates to the topAgentsProfileDetailTabContainerScreen when the action is triggered.
onTapEstatesCardUser(BuildContext context) { NavigatorService.pushNamed(AppRoutes.topAgentsProfileDetailTabContainerScreen); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
