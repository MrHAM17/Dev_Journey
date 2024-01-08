import '../top_doctor_screen/widgets/topdoctor_item_widget.dart';
import 'models/topdoctor_item_model.dart';
import 'notifier/top_doctor_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_06_helthio___telehealth/core/app_export.dart';
import 'package:the_6_06_helthio___telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_06_helthio___telehealth/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:the_6_06_helthio___telehealth/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_6_06_helthio___telehealth/widgets/app_bar/custom_app_bar.dart';

class TopDoctorScreen extends ConsumerStatefulWidget {
  const TopDoctorScreen({Key? key}) : super(key: key);

  @override
  TopDoctorScreenState createState() => TopDoctorScreenState();
}

class TopDoctorScreenState extends ConsumerState<TopDoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 23.v, right: 24.h),
                child: Consumer(builder: (context, ref, _) {
                  return ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 16.v);
                      },
                      itemCount: ref
                              .watch(topDoctorNotifier)
                              .topDoctorModelObj
                              ?.topdoctorItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        TopdoctorItemModel model = ref
                                .watch(topDoctorNotifier)
                                .topDoctorModelObj
                                ?.topdoctorItemList[index] ??
                            TopdoctorItemModel();
                        return TopdoctorItemWidget(model);
                      });
                }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.v, bottom: 8.v)),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "lbl_top_doctor".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconChevronLeftOnprimary24x24,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v))
        ]);
  }
}
