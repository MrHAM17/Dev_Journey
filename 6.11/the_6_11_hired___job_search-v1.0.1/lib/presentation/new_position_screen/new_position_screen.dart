import 'models/new_position_model.dart';
import 'notifier/new_position_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_11_hired___job_search/core/app_export.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_6_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_11_hired___job_search/widgets/custom_drop_down.dart';
import 'package:the_6_11_hired___job_search/widgets/custom_elevated_button.dart';
import 'package:the_6_11_hired___job_search/widgets/custom_text_form_field.dart';

class NewPositionScreen extends ConsumerStatefulWidget {
  const NewPositionScreen({Key? key}) : super(key: key);

  @override
  NewPositionScreenState createState() => NewPositionScreenState();
}

class NewPositionScreenState extends ConsumerState<NewPositionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 36.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, right: 24.h, bottom: 5.v),
                              child: Column(children: [
                                _buildINPUTFIELD(context),
                                SizedBox(height: 20.v),
                                _buildINPUTFIELD1(context),
                                SizedBox(height: 20.v),
                                _buildINPUTFIELD2(context),
                                SizedBox(height: 18.v),
                                _buildINPUTFIELD3(context),
                                SizedBox(height: 18.v),
                                _buildINPUTFIELD4(context),
                                SizedBox(height: 18.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("lbl_end_date".tr,
                                        style: theme.textTheme.titleSmall)),
                                SizedBox(height: 9.v),
                                _buildFrameOne(context,
                                    smallLabelRegular: "lbl_select_date".tr,
                                    onTapFrameOne: () {
                                  onTapFrameOne1(context);
                                }),
                                SizedBox(height: 20.v),
                                _buildINPUTFIELD5(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildSaveChanges(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowBack(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "msg_add_new_position".tr));
  }

  /// Section Widget
  Widget _buildINPUTFIELD(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_title".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 9.v),
      Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            controller: ref.watch(newPositionNotifier).frameOneController,
            hintText: "lbl_ex_ui_designer".tr);
      })
    ]);
  }

  /// Section Widget
  Widget _buildINPUTFIELD1(BuildContext context) {
    return Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_employment_type".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 7.v),
          Consumer(builder: (context, ref, _) {
            return CustomDropDown(
                icon: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 14.v, 19.h, 13.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgCheckmarkGray900,
                        height: 24.adaptSize,
                        width: 24.adaptSize)),
                hintText: "lbl_please_select".tr,
                items: ref
                        .watch(newPositionNotifier)
                        .newPositionModelObj
                        ?.dropdownItemList ??
                    [],
                onChanged: (value) {
                  ref.watch(newPositionNotifier).selectedDropDownValue = value;
                });
          })
        ]));
  }

  /// Section Widget
  Widget _buildINPUTFIELD2(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_company_name".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 7.v),
      Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            controller: ref.watch(newPositionNotifier).nameController,
            hintText: "lbl_ex_shopee".tr);
      })
    ]);
  }

  /// Section Widget
  Widget _buildINPUTFIELD3(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_location2".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 9.v),
      Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            controller: ref.watch(newPositionNotifier).locationController,
            hintText: "msg_ex_singapore_singapore".tr);
      })
    ]);
  }

  /// Section Widget
  Widget _buildINPUTFIELD4(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_start_date".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 9.v),
      _buildFrameOne(context, smallLabelRegular: "lbl_select_date".tr,
          onTapFrameOne: () {
        onTapFrameOne(context);
      })
    ]);
  }

  /// Section Widget
  Widget _buildINPUTFIELD5(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_job_role_description".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 7.v),
      Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            controller: ref.watch(newPositionNotifier).frameOneController1,
            hintText: "lbl_lorem_ipsun".tr,
            textInputAction: TextInputAction.done,
            maxLines: 6,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v));
      })
    ]);
  }

  /// Section Widget
  Widget _buildSaveChanges(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_save_changes".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 37.v),
        onPressed: () {
          onTapSaveChanges(context);
        });
  }

  /// Common widget
  Widget _buildFrameOne(
    BuildContext context, {
    required String smallLabelRegular,
    Function? onTapFrameOne,
  }) {
    return GestureDetector(
        onTap: () {
          onTapFrameOne!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
            decoration: AppDecoration.outlineGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(smallLabelRegular,
                          style: CustomTextStyles.titleMediumBluegray400
                              .copyWith(color: appTheme.blueGray400))),
                  CustomImageView(
                      imagePath: ImageConstant.imgCalendar,
                      height: 24.adaptSize,
                      width: 24.adaptSize)
                ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowBack(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// [newPositionModelObj] object of the current [smallLabelRegular] if the user
  /// selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapFrameOne(BuildContext context) async {
    DateTime? dateTime = await showDatePicker(
        context: context!,
        initialDate: ref
                .watch(newPositionNotifier)
                .newPositionModelObj!
                .selectedSmallLabelRegular ??
            DateTime.now() ??
            DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      ref
          .watch(newPositionNotifier)
          .newPositionModelObj!
          .selectedSmallLabelRegular = dateTime;
      ref.watch(newPositionNotifier).newPositionModelObj!.smallLabelRegular =
          dateTime.format(dateTimeFormatPattern);
    }
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// [newPositionModelObj] object of the current [smallLabelRegular1] if the user
  /// selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapFrameOne1(BuildContext context) async {
    DateTime? dateTime = await showDatePicker(
        context: context!,
        initialDate: ref
                .watch(newPositionNotifier)
                .newPositionModelObj!
                .selectedSmallLabelRegular1 ??
            DateTime.now() ??
            DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      ref
          .watch(newPositionNotifier)
          .newPositionModelObj!
          .selectedSmallLabelRegular1 = dateTime;
      ref.watch(newPositionNotifier).newPositionModelObj!.smallLabelRegular1 =
          dateTime.format(dateTimeFormatPattern);
    }
  }

  /// Navigates to the experienceSettingScreen when the action is triggered.
  onTapSaveChanges(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.experienceSettingScreen,
    );
  }
}
