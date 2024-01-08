import 'bloc/filter_tab_container_bloc.dart';
import 'models/filter_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_01_e_commerce/core/app_export.dart';
import 'package:the_3_01_e_commerce/presentation/filter_page/filter_page.dart';
import 'package:the_3_01_e_commerce/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_3_01_e_commerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_3_01_e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:the_3_01_e_commerce/widgets/custom_text_form_field.dart';

class FilterTabContainerScreen extends StatefulWidget {
  const FilterTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FilterTabContainerScreenState createState() =>
      FilterTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<FilterTabContainerBloc>(
      create: (context) => FilterTabContainerBloc(FilterTabContainerState(
        filterTabContainerModelObj: FilterTabContainerModel(),
      ))
        ..add(FilterTabContainerInitialEvent()),
      child: FilterTabContainerScreen(),
    );
  }
}

class FilterTabContainerScreenState extends State<FilterTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 31.v),
            child: Column(
              children: [
                _buildPriceRange(context),
                SizedBox(height: 35.v),
                _buildCondition(context),
                SizedBox(
                  height: 861.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      FilterPage(),
                      FilterPage(),
                      FilterPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 42.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgCloseIcon,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_filter_search".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceRange(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_price_range".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 11.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 6.h),
                  child: BlocSelector<FilterTabContainerBloc,
                      FilterTabContainerState, TextEditingController?>(
                    selector: (state) => state.priceController,
                    builder: (context, priceController) {
                      return CustomTextFormField(
                        controller: priceController,
                        hintText: "lbl_1_245".tr,
                        hintStyle: CustomTextStyles.labelLargeBluegray300,
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: BlocSelector<FilterTabContainerBloc,
                      FilterTabContainerState, TextEditingController?>(
                    selector: (state) => state.priceController1,
                    builder: (context, priceController1) {
                      return CustomTextFormField(
                        controller: priceController1,
                        hintText: "lbl_9_344".tr,
                        hintStyle: CustomTextStyles.labelLargeBluegray300,
                        textInputAction: TextInputAction.done,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCondition(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_condition".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 13.v),
          Container(
            height: 50.v,
            width: 261.h,
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: appTheme.blueGray300,
              labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
              unselectedLabelColor: theme.colorScheme.primary.withOpacity(1),
              unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
                border: Border.all(
                  color: appTheme.blue50,
                  width: 1.h,
                ),
              ),
              tabs: [
                Tab(
                  child: Text(
                    "lbl_new".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_used".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_not_specified".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}