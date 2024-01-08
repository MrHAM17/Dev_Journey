import '../find_friends_screen/widgets/findfriends_item_widget.dart';import 'models/find_friends_model.dart';import 'models/findfriends_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_search_view.dart';import 'provider/find_friends_provider.dart';class FindFriendsScreen extends StatefulWidget {const FindFriendsScreen({Key? key}) : super(key: key);

@override FindFriendsScreenState createState() =>  FindFriendsScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => FindFriendsProvider(), child: FindFriendsScreen()); } 
 }
class FindFriendsScreenState extends State<FindFriendsScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 23.v), child: Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 5.v), child: Column(children: [Selector<FindFriendsProvider, TextEditingController?>(selector: (context, provider) => provider.searchController, builder: (context, searchController, child) {return CustomSearchView(controller: searchController, hintText: "lbl_search".tr);}), SizedBox(height: 24.v), _buildFindFriends(context)])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_find_friends".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgIconlyCurvedScan, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.v))]); } 
/// Section Widget
Widget _buildFindFriends(BuildContext context) { return Consumer<FindFriendsProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: provider.findFriendsModelObj.findfriendsItemList.length, itemBuilder: (context, index) {FindfriendsItemModel model = provider.findFriendsModelObj.findfriendsItemList[index]; return FindfriendsItemWidget(model);});}); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }
