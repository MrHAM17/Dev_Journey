import '../home_screen_page/widgets/hotels_item_widget.dart';import '../home_screen_page/widgets/sixty_item_widget.dart';import 'models/hotels_item_model.dart';import 'models/sixty_item_model.dart';import 'notifier/home_screen_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_07_comfort___hotel_booking_app/core/app_export.dart';class HomeScreenPage extends ConsumerStatefulWidget {const HomeScreenPage({Key? key}) : super(key: key);

@override HomeScreenPageState createState() =>  HomeScreenPageState();

 }
class HomeScreenPageState extends ConsumerState<HomeScreenPage> with  AutomaticKeepAliveClientMixin<HomeScreenPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 30.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Column(children: [_buildHotels(context), SizedBox(height: 34.v), _buildRecentlyBooked(context)])))]))))); } 
/// Section Widget
Widget _buildHotels(BuildContext context) { return SizedBox(height: 400.v, child: Consumer(builder: (context, ref, _) {return ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 24.h);}, itemCount: ref.watch(homeScreenNotifier).homeScreenModelObj?.hotelsItemList.length ?? 0, itemBuilder: (context, index) {HotelsItemModel model = ref.watch(homeScreenNotifier).homeScreenModelObj?.hotelsItemList[index] ?? HotelsItemModel(); return HotelsItemWidget(model);});})); } 
/// Section Widget
Widget _buildRecentlyBooked(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_recently_booked".tr, style: theme.textTheme.titleMedium), GestureDetector(onTap: () {onTapTxtSeeAll(context);}, child: Text("lbl_see_all".tr, style: CustomTextStyles.titleMediumPrimary))])), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(right: 24.h), child: Consumer(builder: (context, ref, _) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: ref.watch(homeScreenNotifier).homeScreenModelObj?.sixtyItemList.length ?? 0, itemBuilder: (context, index) {SixtyItemModel model = ref.watch(homeScreenNotifier).homeScreenModelObj?.sixtyItemList[index] ?? SixtyItemModel(); return SixtyItemWidget(model);});}))]); } 
/// Navigates to the recentlyBookedScreen when the action is triggered.
onTapTxtSeeAll(BuildContext context) { NavigatorService.pushNamed(AppRoutes.recentlyBookedScreen, ); } 
 }
