import '../viewers_bottomsheet/widgets/viewers_item_widget.dart';
import 'models/viewers_item_model.dart';
import 'models/viewers_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_search_view.dart';
import 'provider/viewers_provider.dart';

// ignore_for_file: must_be_immutable
class ViewersBottomsheet extends StatefulWidget {
  const ViewersBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  ViewersBottomsheetState createState() => ViewersBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ViewersProvider(),
      child: ViewersBottomsheet(),
    );
  }
}

class ViewersBottomsheetState extends State<ViewersBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray100.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameGray300,
            height: 3.v,
            width: 38.h,
          ),
          SizedBox(height: 24.v),
          Text(
            "lbl_3_6k_viewers".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 23.v),
          Divider(),
          SizedBox(height: 23.v),
          Selector<ViewersProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.searchController,
            builder: (context, searchController, child) {
              return CustomSearchView(
                controller: searchController,
                hintText: "lbl_search".tr,
                contentPadding: EdgeInsets.only(
                  top: 19.v,
                  right: 30.h,
                  bottom: 19.v,
                ),
              );
            },
          ),
          SizedBox(height: 24.v),
          _buildViewers(context),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewers(BuildContext context) {
    return Consumer<ViewersProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: provider.viewersModelObj.viewersItemList.length,
          itemBuilder: (context, index) {
            ViewersItemModel model =
                provider.viewersModelObj.viewersItemList[index];
            return ViewersItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
