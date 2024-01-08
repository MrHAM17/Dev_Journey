import '../send_money_screen/widgets/nineteen_item_widget.dart';
import '../send_money_screen/widgets/profilelist_item_widget.dart';
import '../send_money_screen/widgets/twentytwo_item_widget.dart';
import 'models/nineteen_item_model.dart';
import 'models/profilelist_item_model.dart';
import 'models/twentytwo_item_model.dart';
import 'notifier/send_money_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';

class SendMoneyScreen extends ConsumerStatefulWidget {
  const SendMoneyScreen({Key? key}) : super(key: key);

  @override
  SendMoneyScreenState createState() => SendMoneyScreenState();
}

class SendMoneyScreenState extends ConsumerState<SendMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 33.v),
                child: Column(children: [
                  _buildThirtyEight(context),
                  SizedBox(height: 39.v),
                  _buildForty(context),
                  SizedBox(height: 24.v),
                  _buildB(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_money_transfer".tr),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgPlus,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 6.v),
              onTap: () {
                onTapPlus(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildThirtyEight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_favorite".tr, style: theme.textTheme.headlineSmall),
          SizedBox(height: 17.v),
          SizedBox(
              height: 60.v,
              child: Consumer(builder: (context, ref, _) {
                return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 20.h);
                    },
                    itemCount: ref
                            .watch(sendMoneyNotifier)
                            .sendMoneyModelObj
                            ?.profilelistItemList
                            .length ??
                        0,
                    itemBuilder: (context, index) {
                      ProfilelistItemModel model = ref
                              .watch(sendMoneyNotifier)
                              .sendMoneyModelObj
                              ?.profilelistItemList[index] ??
                          ProfilelistItemModel();
                      return ProfilelistItemWidget(model);
                    });
              }))
        ]));
  }

  /// Section Widget
  Widget _buildForty(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_all_contact".tr, style: theme.textTheme.headlineSmall),
          SizedBox(height: 25.v),
          Container(
              margin: EdgeInsets.only(right: 14.h),
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
              decoration: AppDecoration.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("lbl_a".tr, style: theme.textTheme.headlineMedium),
                    SizedBox(height: 9.v),
                    Divider(color: appTheme.gray400),
                    SizedBox(height: 19.v),
                    Consumer(builder: (context, ref, _) {
                      return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 16.v);
                          },
                          itemCount: ref
                                  .watch(sendMoneyNotifier)
                                  .sendMoneyModelObj
                                  ?.nineteenItemList
                                  .length ??
                              0,
                          itemBuilder: (context, index) {
                            NineteenItemModel model = ref
                                    .watch(sendMoneyNotifier)
                                    .sendMoneyModelObj
                                    ?.nineteenItemList[index] ??
                                NineteenItemModel();
                            return NineteenItemWidget(model,
                                onTapAngelinaDruff: () {
                              onTapAngelinaDruff(context);
                            });
                          });
                    }),
                    SizedBox(height: 3.v)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildB(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
        decoration: AppDecoration.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("lbl_b".tr, style: theme.textTheme.headlineMedium),
          SizedBox(height: 9.v),
          Divider(color: appTheme.gray400),
          SizedBox(height: 19.v),
          Consumer(builder: (context, ref, _) {
            return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16.v);
                },
                itemCount: ref
                        .watch(sendMoneyNotifier)
                        .sendMoneyModelObj
                        ?.twentytwoItemList
                        .length ??
                    0,
                itemBuilder: (context, index) {
                  TwentytwoItemModel model = ref
                          .watch(sendMoneyNotifier)
                          .sendMoneyModelObj
                          ?.twentytwoItemList[index] ??
                      TwentytwoItemModel();
                  return TwentytwoItemWidget(model);
                });
          }),
          SizedBox(height: 3.v)
        ]));
  }

  /// Navigates to the enterMoneyScreen when the action is triggered.
  onTapAngelinaDruff(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.enterMoneyScreen);
  }

  /// Navigates to the addPersonScreen when the action is triggered.
  onTapPlus(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addPersonScreen,
    );
  }
}
