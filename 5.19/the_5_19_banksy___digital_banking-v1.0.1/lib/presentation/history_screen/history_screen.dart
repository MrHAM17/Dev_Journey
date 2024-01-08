import '../history_screen/widgets/history_item_widget.dart';
import 'models/history_item_model.dart';
import 'models/history_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_5_19_banksy___digital_banking/widgets/custom_drop_down.dart';
import 'provider/history_provider.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HistoryScreenState createState() => HistoryScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HistoryProvider(),
      child: HistoryScreen(),
    );
  }
}

class HistoryScreenState extends State<HistoryScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 34.v,
          ),
          child: Column(
            children: [
              _buildFrame(context),
              SizedBox(height: 23.v),
              _buildHistory(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgFavoriteOnprimary,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 6.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_histroy".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Selector<HistoryProvider, HistoryModel?>(
          selector: (
            context,
            provider,
          ) =>
              provider.historyModelObj,
          builder: (context, historyModelObj, child) {
            return CustomDropDown(
              width: 170.h,
              icon: Container(
                margin: EdgeInsets.only(left: 9.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFavoriteOnprimarycontainer12x12,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                ),
              ),
              hintText: "lbl_electric_bill".tr,
              hintStyle: theme.textTheme.headlineMedium!,
              items: historyModelObj?.dropdownItemList ?? [],
              onChanged: (value) {
                context.read<HistoryProvider>().onSelected(value);
              },
            );
          },
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 11.v,
            bottom: 8.v,
          ),
          child: Text(
            "lbl_all_time".tr,
            style: CustomTextStyles.labelLargeGray500,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgFavoriteGray500,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(
            left: 3.h,
            top: 14.v,
            bottom: 9.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHistory(BuildContext context) {
    return Consumer<HistoryProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 9.0.v),
              child: SizedBox(
                width: 366.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.blueGray100,
                ),
              ),
            );
          },
          itemCount: provider.historyModelObj.historyItemList.length,
          itemBuilder: (context, index) {
            HistoryItemModel model =
                provider.historyModelObj.historyItemList[index];
            return HistoryItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
