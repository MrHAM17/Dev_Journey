import '../explore_screen/widgets/stories1_item_widget.dart';
import 'bloc/explore_bloc.dart';
import 'models/explore_model.dart';
import 'models/stories1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_05_blog_app/core/app_export.dart';
import 'package:the_3_05_blog_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_3_05_blog_app/widgets/app_bar/appbar_title.dart';
import 'package:the_3_05_blog_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_3_05_blog_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_3_05_blog_app/widgets/custom_search_view.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreBloc>(
        create: (context) =>
            ExploreBloc(ExploreState(exploreModelObj: ExploreModel()))
              ..add(ExploreInitialEvent()),
        child: ExploreScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 14.v),
                  _buildTopBar(context),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      child: Column(children: [
                        Opacity(opacity: 0.5, child: Divider()),
                        SizedBox(height: 18.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text("msg_recommended_for".tr,
                                    style:
                                        CustomTextStyles.titleSmallBlack900))),
                        SizedBox(height: 20.v),
                        _buildStories(context)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildTopBar(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(children: [
          CustomAppBar(
              height: 36.v,
              leadingWidth: 44.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgMegaphone,
                  margin: EdgeInsets.only(left: 20.h, top: 3.v, bottom: 8.v)),
              title: AppbarTitle(
                  text: "lbl_explore".tr, margin: EdgeInsets.only(left: 16.h)),
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgFrame11,
                    margin: EdgeInsets.only(left: 20.h, top: 3.v, right: 8.h)),
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgRewind,
                    margin: EdgeInsets.only(left: 16.h, top: 3.v, right: 28.h))
              ]),
          SizedBox(height: 10.v),
          BlocSelector<ExploreBloc, ExploreState, TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                    controller: searchController, hintText: "lbl_search".tr);
              })
        ]));
  }

  /// Section Widget
  Widget _buildStories(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: BlocSelector<ExploreBloc, ExploreState, ExploreModel?>(
            selector: (state) => state.exploreModelObj,
            builder: (context, exploreModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Opacity(
                        opacity: 0.5,
                        child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.5.v),
                            child: SizedBox(
                                width: 335.h,
                                child: Divider(
                                    height: 1.v,
                                    thickness: 1.v,
                                    color:
                                        appTheme.gray300.withOpacity(0.53)))));
                  },
                  itemCount: exploreModelObj?.stories1ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Stories1ItemModel model =
                        exploreModelObj?.stories1ItemList[index] ??
                            Stories1ItemModel();
                    return Stories1ItemWidget(model);
                  });
            }));
  }
}
