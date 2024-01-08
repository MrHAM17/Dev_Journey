import '../home_page/widgets/eightytwo_item_widget.dart';
import '../home_page/widgets/sixtyseven_item_widget.dart';
import 'models/eightytwo_item_model.dart';
import 'models/sixtyseven_item_model.dart';
import 'notifier/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_09_social_dashboards_ui_kit/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_6_09_social_dashboards_ui_kit/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_6_09_social_dashboards_ui_kit/widgets/app_bar/custom_app_bar.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 16.v),
                  _buildFeatured(context),
                  SizedBox(height: 36.v),
                  _buildEightyTwo(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 68.v,
        leadingWidth: 66.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgRewind,
            margin: EdgeInsets.only(left: 28.h, top: 15.v, bottom: 15.v),
            onTap: () {
              onTapRewind(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_home".tr),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgIconNotification,
              margin: EdgeInsets.symmetric(horizontal: 28.h, vertical: 15.v))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFeatured(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 28.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("lbl_featured".tr, style: theme.textTheme.titleMedium),
              SizedBox(height: 15.v),
              SizedBox(
                  height: 49.v,
                  child: Consumer(builder: (context, ref, _) {
                    return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 18.h);
                        },
                        itemCount: ref
                                .watch(homeNotifier)
                                .homeModelObj
                                ?.sixtysevenItemList
                                .length ??
                            0,
                        itemBuilder: (context, index) {
                          SixtysevenItemModel model = ref
                                  .watch(homeNotifier)
                                  .homeModelObj
                                  ?.sixtysevenItemList[index] ??
                              SixtysevenItemModel();
                          return SixtysevenItemWidget(model);
                        });
                  }))
            ])));
  }

  /// Section Widget
  Widget _buildEightyTwo(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.h),
            child: Consumer(builder: (context, ref, _) {
              return ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 18.v);
                  },
                  itemCount: ref
                          .watch(homeNotifier)
                          .homeModelObj
                          ?.eightytwoItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    EightytwoItemModel model = ref
                            .watch(homeNotifier)
                            .homeModelObj
                            ?.eightytwoItemList[index] ??
                        EightytwoItemModel();
                    return EightytwoItemWidget(model);
                  });
            })));
  }

  /// Navigates to the searchTabContainerScreen when the action is triggered.
  onTapRewind(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchTabContainerScreen,
    );
  }
}
