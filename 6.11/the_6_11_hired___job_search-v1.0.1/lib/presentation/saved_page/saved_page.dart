import '../saved_page/widgets/saved_item_widget.dart';
import 'models/saved_item_model.dart';
import 'notifier/saved_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_11_hired___job_search/core/app_export.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';

class SavedPage extends ConsumerStatefulWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  SavedPageState createState() => SavedPageState();
}

class SavedPageState extends ConsumerState<SavedPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 30.v, right: 24.h),
                child: Consumer(builder: (context, ref, _) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 12.v);
                      },
                      itemCount: ref
                              .watch(savedNotifier)
                              .savedModelObj
                              ?.savedItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        SavedItemModel model = ref
                                .watch(savedNotifier)
                                .savedModelObj
                                ?.savedItemList[index] ??
                            SavedItemModel();
                        return SavedItemWidget(model, onTapBag: () {
                          onTapBag(context);
                        });
                      });
                }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapImage(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_saved".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgComponent3,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Navigates to the jobDetailsTabContainerScreen when the action is triggered.
  onTapBag(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.jobDetailsTabContainerScreen);
  }

  /// Navigates back to the previous screen.
  onTapImage(BuildContext context) {
    NavigatorService.goBack();
  }
}
