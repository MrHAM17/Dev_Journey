import '../country_or_region_screen/widgets/countryorregion_item_widget.dart';
import 'models/countryorregion_item_model.dart';
import 'notifier/country_or_region_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_15_safebank___mobile_banking_app/widgets/custom_search_view.dart';

class CountryOrRegionScreen extends ConsumerStatefulWidget {
  const CountryOrRegionScreen({Key? key}) : super(key: key);

  @override
  CountryOrRegionScreenState createState() => CountryOrRegionScreenState();
}

class CountryOrRegionScreenState extends ConsumerState<CountryOrRegionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(24.h),
                child: Column(children: [
                  Consumer(builder: (context, ref, _) {
                    return CustomSearchView(
                        controller:
                            ref.watch(countryOrRegionNotifier).searchController,
                        hintText: "msg_search_country".tr);
                  }),
                  SizedBox(height: 31.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("msg_country_or_region".tr,
                          style: CustomTextStyles.titleMediumSemiBold18)),
                  SizedBox(height: 14.v),
                  _buildCountryOrRegion(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 59.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.fromLTRB(24.h, 7.v, 24.h, 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildCountryOrRegion(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 16.v);
          },
          itemCount: ref
                  .watch(countryOrRegionNotifier)
                  .countryOrRegionModelObj
                  ?.countryorregionItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            CountryorregionItemModel model = ref
                    .watch(countryOrRegionNotifier)
                    .countryOrRegionModelObj
                    ?.countryorregionItemList[index] ??
                CountryorregionItemModel();
            return CountryorregionItemWidget(model, onTapCountrySelection: () {
              onTapCountrySelection(context);
            });
          });
    });
  }

  /// Navigates to the minePageContainerScreen when the action is triggered.
  onTapCountrySelection(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.minePageContainerScreen);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
