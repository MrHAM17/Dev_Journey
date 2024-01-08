import '../my_friends_screen/widgets/myfriends_item_widget.dart';
import 'models/myfriends_item_model.dart';
import 'notifier/my_friends_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_6_09_social_dashboards_ui_kit/widgets/app_bar/appbar_title_searchview_two.dart';
import 'package:the_6_09_social_dashboards_ui_kit/widgets/app_bar/custom_app_bar.dart';

class MyFriendsScreen extends ConsumerStatefulWidget {
  const MyFriendsScreen({Key? key}) : super(key: key);

  @override
  MyFriendsScreenState createState() => MyFriendsScreenState();
}

class MyFriendsScreenState extends ConsumerState<MyFriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 28.h, top: 16.v, right: 28.h),
                child: Consumer(builder: (context, ref, _) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 8.v);
                      },
                      itemCount: ref
                              .watch(myFriendsNotifier)
                              .myFriendsModelObj
                              ?.myfriendsItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        MyfriendsItemModel model = ref
                                .watch(myFriendsNotifier)
                                .myFriendsModelObj
                                ?.myfriendsItemList[index] ??
                            MyfriendsItemModel();
                        return MyfriendsItemWidget(model);
                      });
                }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 84.v,
        leadingWidth: 66.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgButtonIcon,
            margin: EdgeInsets.only(left: 28.h, top: 15.v, bottom: 31.v),
            onTap: () {
              onTapButtonIcon(context);
            }),
        title: Consumer(builder: (context, ref, _) {
          return AppbarTitleSearchviewTwo(
              margin: EdgeInsets.only(left: 10.h),
              hintText: "msg_search_in_friends".tr,
              controller: ref.watch(myFriendsNotifier).searchController);
        }),
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  onTapButtonIcon(BuildContext context) {
    NavigatorService.goBack();
  }
}
