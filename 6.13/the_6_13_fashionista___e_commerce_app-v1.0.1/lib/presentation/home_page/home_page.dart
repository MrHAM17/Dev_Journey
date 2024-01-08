import '../home_page/widgets/frame2_item_widget.dart';
import '../home_page/widgets/frame3_item_widget.dart';
import 'models/frame2_item_model.dart';
import 'models/frame3_item_model.dart';
import 'notifier/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_13_fashionista___e_commerce_app/core/app_export.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 32.v),
                  Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(children: [
                        _buildFrame(context),
                        SizedBox(height: 34.v),
                        _buildFrame1(context),
                        SizedBox(height: 13.v),
                        _buildFrame2(context)
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return SizedBox(
        height: 292.v,
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 15.h);
              },
              itemCount:
                  ref.watch(homeNotifier).homeModelObj?.frame2ItemList.length ??
                      0,
              itemBuilder: (context, index) {
                Frame2ItemModel model = ref
                        .watch(homeNotifier)
                        .homeModelObj
                        ?.frame2ItemList[index] ??
                    Frame2ItemModel();
                return Frame2ItemWidget(model, onTapCard: () {
                  onTapCard(context);
                });
              });
        }));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 18.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("lbl_populer_items".tr,
                      style: theme.textTheme.titleMedium),
                  GestureDetector(
                      onTap: () {
                        onTapTxtSeeAll(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 5.v),
                          child: Text("lbl_see_all".tr,
                              style: CustomTextStyles.titleSmallOrange700)))
                ])));
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return SizedBox(
        height: 292.v,
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 15.h);
              },
              itemCount:
                  ref.watch(homeNotifier).homeModelObj?.frame3ItemList.length ??
                      0,
              itemBuilder: (context, index) {
                Frame3ItemModel model = ref
                        .watch(homeNotifier)
                        .homeModelObj
                        ?.frame3ItemList[index] ??
                    Frame3ItemModel();
                return Frame3ItemWidget(model, onTapCard: () {
                  onTapCard(context);
                });
              });
        }));
  }

  /// Navigates to the productViewScreen when the action is triggered.
  onTapCard(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.productViewScreen);
  }

  /// Navigates to the popularItemsScreen when the action is triggered.
  onTapTxtSeeAll(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.popularItemsScreen,
    );
  }
}
