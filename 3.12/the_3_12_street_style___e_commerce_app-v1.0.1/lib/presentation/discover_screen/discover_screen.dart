import '../discover_screen/widgets/discover_item_widget.dart';
import 'bloc/discover_bloc.dart';
import 'models/discover_item_model.dart';
import 'models/discover_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_3_12_street_style___e_commerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_3_12_street_style___e_commerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_3_12_street_style___e_commerce_app/widgets/app_bar/custom_app_bar.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DiscoverBloc>(
        create: (context) =>
            DiscoverBloc(DiscoverState(discoverModelObj: DiscoverModel()))
              ..add(DiscoverInitialEvent()),
        child: DiscoverScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 21.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_discover".tr,
                          style: theme.textTheme.displayMedium),
                      SizedBox(height: 8.v),
                      Text("msg_discover_your_products".tr,
                          style: theme.textTheme.titleSmall),
                      SizedBox(height: 38.v),
                      _buildAddSection(context),
                      SizedBox(height: 41.v),
                      _buildDiscover(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 53.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 29.h, top: 13.v, bottom: 13.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.only(left: 23.h, top: 13.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup86,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup84,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 36.h))
        ]);
  }

  /// Section Widget
  Widget _buildAddSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 6.h),
        padding: EdgeInsets.symmetric(horizontal: 154.h, vertical: 37.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: CustomImageView(
            imagePath: ImageConstant.imgPlus,
            height: 22.adaptSize,
            width: 22.adaptSize));
  }

  /// Section Widget
  Widget _buildDiscover(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child: BlocSelector<DiscoverBloc, DiscoverState, DiscoverModel?>(
            selector: (state) => state.discoverModelObj,
            builder: (context, discoverModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 20.v);
                  },
                  itemCount: discoverModelObj?.discoverItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    DiscoverItemModel model =
                        discoverModelObj?.discoverItemList[index] ??
                            DiscoverItemModel();
                    return DiscoverItemWidget(model);
                  });
            }));
  }
}
