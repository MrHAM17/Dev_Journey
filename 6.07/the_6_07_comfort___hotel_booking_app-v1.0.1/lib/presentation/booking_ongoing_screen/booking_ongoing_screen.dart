import '../booking_ongoing_screen/widgets/tickets1_item_widget.dart';import 'models/tickets1_item_model.dart';import 'notifier/booking_ongoing_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/home_screen_tab_container_page/home_screen_tab_container_page.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/profile_settings_page/profile_settings_page.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/search_page_tab_container_page/search_page_tab_container_page.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/custom_bottom_bar.dart';class BookingOngoingScreen extends ConsumerStatefulWidget {const BookingOngoingScreen({Key? key}) : super(key: key);

@override BookingOngoingScreenState createState() =>  BookingOngoingScreenState();

 }

// ignore_for_file: must_be_immutable
class BookingOngoingScreenState extends ConsumerState<BookingOngoingScreen> {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 29.v), child: Column(children: [_buildMyBookings(context), SizedBox(height: 30.v), _buildTickets(context)])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 50.v, leadingWidth: 56.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgFloatingIconWhiteA700, margin: EdgeInsets.only(left: 24.h, top: 9.v, bottom: 9.v)), title: AppbarTitle(text: "lbl_my_bookings".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgRewind, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v))]); } 
/// Section Widget
Widget _buildMyBookings(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 10.v), child: Row(mainAxisAlignment: MainAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.only(left: 6.h, top: 3.v), child: Text("lbl_ongoing".tr, style: CustomTextStyles.titleMediumSemiBold)), Spacer(flex: 52), Padding(padding: EdgeInsets.only(top: 3.v), child: Text("lbl_completed".tr, style: CustomTextStyles.titleMediumPrimarySemiBold)), Spacer(flex: 47), Padding(padding: EdgeInsets.only(bottom: 2.v), child: Text("lbl_cancelled".tr, style: CustomTextStyles.titleMediumPrimarySemiBold))])); } 
/// Section Widget
Widget _buildTickets(BuildContext context) { return Consumer(builder: (context, ref, _) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 10.0.v), child: SizedBox(width: 340.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray700)));}, itemCount: ref.watch(bookingOngoingNotifier).bookingOngoingModelObj?.tickets1ItemList.length ?? 0, itemBuilder: (context, index) {Tickets1ItemModel model = ref.watch(bookingOngoingNotifier).bookingOngoingModelObj?.tickets1ItemList[index] ?? Tickets1ItemModel(); return Tickets1ItemWidget(model, onTapCancelBooking: () {onTapCancelBooking(context);}, onTapViewTicket: () {onTapViewTicket(context);});});}); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homeScreenTabContainerPage; case BottomBarEnum.Search: return AppRoutes.searchPageTabContainerPage; case BottomBarEnum.Booking: return "/"; case BottomBarEnum.Profile: return AppRoutes.profileSettingsPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homeScreenTabContainerPage: return HomeScreenTabContainerPage(); case AppRoutes.searchPageTabContainerPage: return SearchPageTabContainerPage(); case AppRoutes.profileSettingsPage: return ProfileSettingsPage(); default: return DefaultWidget();} } 

onTapCancelBooking(BuildContext context) { // TODO: implement Actions
 } 
/// Navigates to the viewTicketScreen when the action is triggered.
onTapViewTicket(BuildContext context) { NavigatorService.pushNamed(AppRoutes.viewTicketScreen, ); } 
 }
