import '../notification_screen/widgets/today_item_widget.dart';import 'models/today_item_model.dart';import 'notifier/notification_notifier.dart';import 'package:flutter/material.dart';import 'package:grouped_list/grouped_list.dart';import 'package:the_6_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_6_21_vertex___real_estate_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:the_6_21_vertex___real_estate_app/widgets/app_bar/custom_app_bar.dart';class NotificationScreen extends ConsumerStatefulWidget {const NotificationScreen({Key? key}) : super(key: key);

@override NotificationScreenState createState() =>  NotificationScreenState();

 }
class NotificationScreenState extends ConsumerState<NotificationScreen> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.fromLTRB(24.h, 27.v, 24.h, 5.v), child: Consumer(builder: (context, ref, _) {return GroupedListView<TodayItemModel, String>(shrinkWrap: true, stickyHeaderBackgroundColor: Colors.transparent, elements: ref.watch(notificationNotifier).notificationModelObj?.todayItemList ?? [], groupBy: (element) => element.groupBy!, sort: false, groupSeparatorBuilder: (String value) {return Padding(padding: EdgeInsets.only(top: 22.v, bottom: 17.v), child: Column(children: [Text(value, style: CustomTextStyles.titleMediumBold.copyWith(color: theme.colorScheme.primaryContainer))]));}, itemBuilder: (context, model) {return TodayItemWidget(model);}, separator: SizedBox(height: 14.v));})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_notification".tr), styleType: Style.bgFill); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
