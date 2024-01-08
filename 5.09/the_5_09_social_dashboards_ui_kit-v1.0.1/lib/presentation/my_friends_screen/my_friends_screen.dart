import '../my_friends_screen/widgets/myfriends_item_widget.dart';
import 'models/my_friends_model.dart';
import 'models/myfriends_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_5_09_social_dashboards_ui_kit/widgets/app_bar/appbar_title_searchview_two.dart';
import 'package:the_5_09_social_dashboards_ui_kit/widgets/app_bar/custom_app_bar.dart';
import 'provider/my_friends_provider.dart';

class MyFriendsScreen extends StatefulWidget {
  const MyFriendsScreen({Key? key}) : super(key: key);

  @override
  MyFriendsScreenState createState() => MyFriendsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyFriendsProvider(), child: MyFriendsScreen());
  }
}

class MyFriendsScreenState extends State<MyFriendsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 28.h, top: 16.v, right: 28.h),
                child: Consumer<MyFriendsProvider>(
                    builder: (context, provider, child) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 8.v);
                      },
                      itemCount:
                          provider.myFriendsModelObj.myfriendsItemList.length,
                      itemBuilder: (context, index) {
                        MyfriendsItemModel model =
                            provider.myFriendsModelObj.myfriendsItemList[index];
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
        title: Selector<MyFriendsProvider, TextEditingController?>(
            selector: (context, provider) => provider.searchController,
            builder: (context, searchController, child) {
              return AppbarTitleSearchviewTwo(
                  margin: EdgeInsets.only(left: 10.h),
                  hintText: "msg_search_in_friends".tr,
                  controller: searchController);
            }),
        styleType: Style.bgFill);
  }

  /// Navigates to the previous screen.
  onTapButtonIcon(BuildContext context) {
    NavigatorService.goBack();
  }
}
