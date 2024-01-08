import '../filter_page/widgets/buyingformate_item_widget.dart';import '../filter_page/widgets/itemlocation_item_widget.dart';import '../filter_page/widgets/showonly_item_widget.dart';import 'models/buyingformate_item_model.dart';import 'models/filter_model.dart';import 'models/itemlocation_item_model.dart';import 'models/showonly_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/widgets/custom_elevated_button.dart';import 'provider/filter_provider.dart';class FilterPage extends StatefulWidget {const FilterPage({Key? key}) : super(key: key);

@override FilterPageState createState() =>  FilterPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => FilterProvider(), child: FilterPage()); } 
 }
class FilterPageState extends State<FilterPage> with  AutomaticKeepAliveClientMixin<FilterPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(children: [_buildBuyingFormat(context), SizedBox(height: 23.v), _buildItemLocation(context), SizedBox(height: 25.v), _buildShowOnly(context), SizedBox(height: 28.v), CustomElevatedButton(text: "lbl_apply".tr, onPressed: () {onTapApply(context);})]))]))))); } 
/// Section Widget
Widget _buildBuyingFormat(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_buying_format".tr, style: theme.textTheme.titleSmall), SizedBox(height: 11.v), Consumer<FilterProvider>(builder: (context, provider, child) {return Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(provider.filterModelObj.buyingformateItemList.length, (index) {BuyingformateItemModel model = provider.filterModelObj.buyingformateItemList[index]; return BuyingformateItemWidget(model, onSelectedChipView1: (value) {provider.onSelectedChipView1(index, value);});}));})]); } 
/// Section Widget
Widget _buildItemLocation(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_item_location".tr, style: theme.textTheme.titleSmall), SizedBox(height: 13.v), Consumer<FilterProvider>(builder: (context, provider, child) {return Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(provider.filterModelObj.itemlocationItemList.length, (index) {ItemlocationItemModel model = provider.filterModelObj.itemlocationItemList[index]; return ItemlocationItemWidget(model, onSelectedChipView2: (value) {provider.onSelectedChipView2(index, value);});}));})]); } 
/// Section Widget
Widget _buildShowOnly(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_show_only".tr, style: theme.textTheme.titleSmall), SizedBox(height: 10.v), Consumer<FilterProvider>(builder: (context, provider, child) {return Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(provider.filterModelObj.showonlyItemList.length, (index) {ShowonlyItemModel model = provider.filterModelObj.showonlyItemList[index]; return ShowonlyItemWidget(model, onSelectedChipView3: (value) {provider.onSelectedChipView3(index, value);});}));})]); } 
/// Navigates to the searchResultScreen when the action is triggered.
onTapApply(BuildContext context) { NavigatorService.pushNamed(AppRoutes.searchResultScreen, ); } 
 }
