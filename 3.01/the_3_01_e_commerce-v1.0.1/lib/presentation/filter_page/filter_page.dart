import '../filter_page/widgets/buyingformate_item_widget.dart';import '../filter_page/widgets/itemlocation_item_widget.dart';import '../filter_page/widgets/showonly_item_widget.dart';import 'bloc/filter_bloc.dart';import 'models/buyingformate_item_model.dart';import 'models/filter_model.dart';import 'models/itemlocation_item_model.dart';import 'models/showonly_item_model.dart';import 'package:flutter/material.dart';import 'package:the_3_01_e_commerce/core/app_export.dart';import 'package:the_3_01_e_commerce/widgets/custom_elevated_button.dart';class FilterPage extends StatefulWidget {const FilterPage({Key? key}) : super(key: key);

@override FilterPageState createState() =>  FilterPageState();

static Widget builder(BuildContext context) { return BlocProvider<FilterBloc>(create: (context) => FilterBloc(FilterState(filterModelObj: FilterModel()))..add(FilterInitialEvent()), child: FilterPage()); } 
 }
class FilterPageState extends State<FilterPage> with  AutomaticKeepAliveClientMixin<FilterPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(children: [_buildBuyingFormat(context), SizedBox(height: 23.v), _buildItemLocation(context), SizedBox(height: 25.v), _buildShowOnly(context), SizedBox(height: 28.v), CustomElevatedButton(text: "lbl_apply".tr, onPressed: () {onTapApply(context);})]))]))))); } 
/// Section Widget
Widget _buildBuyingFormat(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_buying_format".tr, style: theme.textTheme.titleSmall), SizedBox(height: 11.v), BlocSelector<FilterBloc, FilterState, FilterModel?>(selector: (state) => state.filterModelObj, builder: (context, filterModelObj) {return Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(filterModelObj?.buyingformateItemList.length ?? 0, (index) {BuyingformateItemModel model = filterModelObj?.buyingformateItemList[index] ?? BuyingformateItemModel(); return BuyingformateItemWidget(model, onSelectedChipView: (value) {context.read<FilterBloc>().add(UpdateChipViewEvent(index: index, isSelected: value));});}));})]); } 
/// Section Widget
Widget _buildItemLocation(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_item_location".tr, style: theme.textTheme.titleSmall), SizedBox(height: 13.v), BlocSelector<FilterBloc, FilterState, FilterModel?>(selector: (state) => state.filterModelObj, builder: (context, filterModelObj) {return Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(filterModelObj?.itemlocationItemList.length ?? 0, (index) {ItemlocationItemModel model = filterModelObj?.itemlocationItemList[index] ?? ItemlocationItemModel(); return ItemlocationItemWidget(model, onSelectedChipView: (value) {context.read<FilterBloc>().add(UpdateChipView1Event(index: index, isSelected: value));});}));})]); } 
/// Section Widget
Widget _buildShowOnly(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_show_only".tr, style: theme.textTheme.titleSmall), SizedBox(height: 10.v), BlocSelector<FilterBloc, FilterState, FilterModel?>(selector: (state) => state.filterModelObj, builder: (context, filterModelObj) {return Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(filterModelObj?.showonlyItemList.length ?? 0, (index) {ShowonlyItemModel model = filterModelObj?.showonlyItemList[index] ?? ShowonlyItemModel(); return ShowonlyItemWidget(model, onSelectedChipView: (value) {context.read<FilterBloc>().add(UpdateChipView2Event(index: index, isSelected: value));});}));})]); } 
/// Navigates to the searchResultScreen when the action is triggered.
onTapApply(BuildContext context) { NavigatorService.pushNamed(AppRoutes.searchResultScreen, ); } 
 }
