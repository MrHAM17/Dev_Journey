import '../home_page/widgets/categories_item_widget.dart';
import '../home_page/widgets/home_item_widget.dart';
import 'models/categories_item_model.dart';
import 'models/home_item_model.dart';
import 'notifier/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_06_helthio___telehealth/core/app_export.dart';
import 'package:the_6_06_helthio___telehealth/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_6_06_helthio___telehealth/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_06_helthio___telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_06_helthio___telehealth/widgets/custom_elevated_button.dart';
import 'package:the_6_06_helthio___telehealth/widgets/custom_search_view.dart';

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
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 15.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Column(children: [
                          Consumer(builder: (context, ref, _) {
                            return CustomSearchView(
                                controller:
                                    ref.watch(homeNotifier).searchController,
                                hintText: "msg_search_doctor_drugs".tr);
                          }),
                          SizedBox(height: 16.v),
                          _buildLearnMore(context),
                          SizedBox(height: 27.v),
                          _buildTopDoctors(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 92.v,
        title: AppbarSubtitle(
            text: "msg_find_your_desire".tr,
            margin: EdgeInsets.only(left: 24.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.fromLTRB(24.h, 5.v, 24.h, 36.v))
        ]);
  }

  /// Section Widget
  Widget _buildCategories(BuildContext context) {
    return SizedBox(
        height: 83.v,
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 19.h);
              },
              itemCount: ref
                      .watch(homeNotifier)
                      .homeModelObj
                      ?.categoriesItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                CategoriesItemModel model = ref
                        .watch(homeNotifier)
                        .homeModelObj
                        ?.categoriesItemList[index] ??
                    CategoriesItemModel();
                return CategoriesItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildOfferBanner(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        decoration: AppDecoration.linear
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 11.h, top: 20.v, bottom: 20.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 146.h,
                        child: Text("msg_early_protection".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleMediumWhiteA700
                                .copyWith(height: 1.50))),
                    SizedBox(height: 15.v),
                    CustomElevatedButton(
                        height: 30.v,
                        width: 98.h,
                        text: "lbl_learn_more".tr,
                        buttonStyle: CustomButtonStyles.fillWhiteA,
                        buttonTextStyle: CustomTextStyles.labelLargePrimary)
                  ])),
          Container(
              height: 130.v,
              width: 113.h,
              margin: EdgeInsets.only(top: 5.v),
              child: Stack(alignment: Alignment.center, children: [
                Opacity(
                    opacity: 0.5,
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: 113.adaptSize,
                            width: 113.adaptSize,
                            margin: EdgeInsets.only(bottom: 1.v),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(56.h),
                                border: Border.all(
                                    color: appTheme.whiteA700.withOpacity(0.53),
                                    width: 18.h))))),
                CustomImageView(
                    imagePath: ImageConstant.img7xm6,
                    height: 130.v,
                    width: 91.h,
                    radius: BorderRadius.circular(10.h),
                    alignment: Alignment.center)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildLearnMore(BuildContext context) {
    return Column(children: [
      _buildCategories(context),
      SizedBox(height: 15.v),
      _buildOfferBanner(context)
    ]);
  }

  /// Section Widget
  Widget _buildTopDoctors(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
            padding: EdgeInsets.only(top: 1.v),
            child:
                Text("lbl_top_doctor".tr, style: theme.textTheme.titleMedium)),
        GestureDetector(
            onTap: () {
              onTapTxtSeeAll(context);
            },
            child: Padding(
                padding: EdgeInsets.only(bottom: 3.v),
                child: Text("lbl_see_all".tr,
                    style: CustomTextStyles.titleSmallPrimary)))
      ]),
      SizedBox(height: 16.v),
      Consumer(builder: (context, ref, _) {
        return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 191.v,
                crossAxisCount: 2,
                mainAxisSpacing: 17.h,
                crossAxisSpacing: 17.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                ref.watch(homeNotifier).homeModelObj?.homeItemList.length ?? 0,
            itemBuilder: (context, index) {
              HomeItemModel model =
                  ref.watch(homeNotifier).homeModelObj?.homeItemList[index] ??
                      HomeItemModel();
              return HomeItemWidget(model);
            });
      })
    ]);
  }

  /// Navigates to the topDoctorScreen when the action is triggered.
  onTapTxtSeeAll(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.topDoctorScreen,
    );
  }
}
