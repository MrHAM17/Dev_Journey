import '../trending_sounds_page/widgets/autolayouthorizontal1_item_widget.dart';
import '../trending_sounds_page/widgets/autolayouthorizontal2_item_widget.dart';
import 'models/autolayouthorizontal1_item_model.dart';
import 'models/autolayouthorizontal2_item_model.dart';
import 'notifier/trending_sounds_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TrendingSoundsPage extends ConsumerStatefulWidget {
  const TrendingSoundsPage({Key? key})
      : super(
          key: key,
        );

  @override
  TrendingSoundsPageState createState() => TrendingSoundsPageState();
}

class TrendingSoundsPageState extends ConsumerState<TrendingSoundsPage>
    with AutomaticKeepAliveClientMixin<TrendingSoundsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    _buildFavoriteGirl(context),
                    SizedBox(height: 20.v),
                    _buildAutoLayoutHorizontal(context),
                    SizedBox(height: 20.v),
                    _buildYummy(context),
                    SizedBox(height: 20.v),
                    _buildAutoLayoutHorizontal1(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFavoriteGirl(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 195.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage18,
                height: 80.adaptSize,
                width: 80.adaptSize,
                radius: BorderRadius.circular(
                  16.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 2.v,
                  bottom: 4.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_favorite_girl".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      "lbl_justin_bieber".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "lbl_01_00".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 31.v),
          child: Text(
            "lbl_387_5m".tr,
            style: CustomTextStyles.titleSmallSemiBold,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 21.h,
            top: 28.v,
            bottom: 28.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return SizedBox(
      height: 200.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 8.h,
              );
            },
            itemCount: ref
                    .watch(trendingSoundsNotifier)
                    .trendingSoundsModelObj
                    ?.autolayouthorizontal1ItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              Autolayouthorizontal1ItemModel model = ref
                      .watch(trendingSoundsNotifier)
                      .trendingSoundsModelObj
                      ?.autolayouthorizontal1ItemList[index] ??
                  Autolayouthorizontal1ItemModel();
              return Autolayouthorizontal1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildYummy(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage18,
          height: 80.adaptSize,
          width: 80.adaptSize,
          radius: BorderRadius.circular(
            16.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 4.v,
            bottom: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_yummy".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 5.v),
              Text(
                "lbl_justin_bieber".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 9.v),
              Text(
                "lbl_00_45".tr,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 31.v),
          child: Text(
            "lbl_289_4m".tr,
            style: CustomTextStyles.titleSmallSemiBold,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 21.h,
            top: 28.v,
            bottom: 28.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal1(BuildContext context) {
    return SizedBox(
      height: 200.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 8.h,
              );
            },
            itemCount: ref
                    .watch(trendingSoundsNotifier)
                    .trendingSoundsModelObj
                    ?.autolayouthorizontal2ItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              Autolayouthorizontal2ItemModel model = ref
                      .watch(trendingSoundsNotifier)
                      .trendingSoundsModelObj
                      ?.autolayouthorizontal2ItemList[index] ??
                  Autolayouthorizontal2ItemModel();
              return Autolayouthorizontal2ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
