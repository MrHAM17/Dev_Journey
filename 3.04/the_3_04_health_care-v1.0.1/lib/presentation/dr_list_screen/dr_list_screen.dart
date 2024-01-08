import '../dr_list_screen/widgets/drlist_item_widget.dart';
import 'bloc/dr_list_bloc.dart';
import 'models/dr_list_model.dart';
import 'models/drlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_04_health_care/core/app_export.dart';
import 'package:the_3_04_health_care/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_3_04_health_care/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_3_04_health_care/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_3_04_health_care/widgets/app_bar/custom_app_bar.dart';

class DrListScreen extends StatelessWidget {
  const DrListScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DrListBloc>(
        create: (context) =>
            DrListBloc(DrListState(drListModelObj: DrListModel()))
              ..add(DrListInitialEvent()),
        child: DrListScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 20.h, top: 24.v, right: 20.h),
                child: BlocSelector<DrListBloc, DrListState, DrListModel?>(
                    selector: (state) => state.drListModelObj,
                    builder: (context, drListModelObj) {
                      return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 16.v);
                          },
                          itemCount: drListModelObj?.drlistItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            DrlistItemModel model =
                                drListModelObj?.drlistItemList[index] ??
                                    DrlistItemModel();
                            return DrlistItemWidget(model);
                          });
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 21.h, top: 10.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_top_doctor".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotification,
              margin: EdgeInsets.fromLTRB(14.h, 14.v, 14.h, 10.v))
        ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}