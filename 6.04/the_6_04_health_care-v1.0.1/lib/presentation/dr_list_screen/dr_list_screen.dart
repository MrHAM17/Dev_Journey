import '../dr_list_screen/widgets/drlist_item_widget.dart';
import 'models/drlist_item_model.dart';
import 'notifier/dr_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_04_health_care/core/app_export.dart';
import 'package:the_6_04_health_care/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_04_health_care/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_6_04_health_care/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_04_health_care/widgets/app_bar/custom_app_bar.dart';

class DrListScreen extends ConsumerStatefulWidget {
  const DrListScreen({Key? key}) : super(key: key);

  @override
  DrListScreenState createState() => DrListScreenState();
}

class DrListScreenState extends ConsumerState<DrListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 20.h, top: 24.v, right: 20.h),
                child: Consumer(builder: (context, ref, _) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 16.v);
                      },
                      itemCount: ref
                              .watch(drListNotifier)
                              .drListModelObj
                              ?.drlistItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        DrlistItemModel model = ref
                                .watch(drListNotifier)
                                .drListModelObj
                                ?.drlistItemList[index] ??
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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
