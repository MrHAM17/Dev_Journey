import '../home_screen_page/widgets/hotels_item_widget.dart';import '../home_screen_page/widgets/sixty_item_widget.dart';import 'models/home_screen_model.dart';import 'models/hotels_item_model.dart';import 'models/sixty_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'provider/home_screen_provider.dart';class HomeScreenPage extends StatefulWidget {const HomeScreenPage({Key? key}) : super(key: key);

@override HomeScreenPageState createState() =>  HomeScreenPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => HomeScreenProvider(), child: HomeScreenPage()); } 
 }
class HomeScreenPageState extends State<HomeScreenPage> with  AutomaticKeepAliveClientMixin<HomeScreenPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState();// TODO: implement Actions
NavigatorService.pushNamed(AppRoutes.searchPage, );// TODO: implement Actions
NavigatorService.pushNamed(AppRoutes.profileSettingsPage, ); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 30.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Column(children: [_buildHotels(context), SizedBox(height: 34.v), _buildRecentlyBooked(context)])))]))))); } 
/// Section Widget
Widget _buildHotels(BuildContext context) { return SizedBox(height: 400.v, child: Consumer<HomeScreenProvider>(builder: (context, provider, child) {return ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 24.h);}, itemCount: provider.homeScreenModelObj.hotelsItemList.length, itemBuilder: (context, index) {HotelsItemModel model = provider.homeScreenModelObj.hotelsItemList[index]; return HotelsItemWidget(model);});})); } 
/// Section Widget
Widget _buildRecentlyBooked(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_recently_booked".tr, style: theme.textTheme.titleMedium), GestureDetector(onTap: () {onTapTxtSeeAll(context);}, child: Text("lbl_see_all".tr, style: CustomTextStyles.titleMediumPrimary))])), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(right: 24.h), child: Consumer<HomeScreenProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: provider.homeScreenModelObj.sixtyItemList.length, itemBuilder: (context, index) {SixtyItemModel model = provider.homeScreenModelObj.sixtyItemList[index]; return SixtyItemWidget(model);});}))]); } 
/// Navigates to the recentlyBookedScreen when the action is triggered.
onTapTxtSeeAll(BuildContext context) { NavigatorService.pushNamed(AppRoutes.recentlyBookedScreen, ); } 
 }
