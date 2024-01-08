import '../mobile_prepaid_one_screen/widgets/fortytwo_item_widget.dart';
import '../mobile_prepaid_one_screen/widgets/profilelist1_item_widget.dart';
import '../mobile_prepaid_one_screen/widgets/thirtyseven_item_widget.dart';
import 'models/fortytwo_item_model.dart';
import 'models/profilelist1_item_model.dart';
import 'models/thirtyseven_item_model.dart';
import 'notifier/mobile_prepaid_one_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/core/utils/validation_functions.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/appbar_title.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_text_form_field.dart';

class MobilePrepaidOneScreen extends ConsumerStatefulWidget {
  const MobilePrepaidOneScreen({Key? key}) : super(key: key);

  @override
  MobilePrepaidOneScreenState createState() => MobilePrepaidOneScreenState();
}

// ignore_for_file: must_be_immutable
class MobilePrepaidOneScreenState
    extends ConsumerState<MobilePrepaidOneScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 35.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 24.h, right: 10.h),
                        child: Column(children: [
                          _buildInputField(context),
                          SizedBox(height: 39.v),
                          _buildRecent(context),
                          SizedBox(height: 39.v),
                          _buildSeventyOne(context),
                          SizedBox(height: 24.v),
                          _buildB(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFavoriteOnprimary,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v)),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_mobile_prepaid2".tr));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h, right: 11.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_prepaid_to".tr, style: CustomTextStyles.bodyLargeGray70001),
          SizedBox(height: 9.v),
          Consumer(builder: (context, ref, _) {
            return CustomTextFormField(
                controller: ref.watch(mobilePrepaidOneNotifier).nameController,
                hintText: "lbl_name_or_number".tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.number,
                validator: (value) {
                  if (!isNumeric(value)) {
                    return "err_msg_please_enter_valid_number".tr;
                  }
                  return null;
                });
          })
        ]));
  }

  /// Section Widget
  Widget _buildRecent(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_recent".tr, style: theme.textTheme.headlineSmall),
      SizedBox(height: 17.v),
      SizedBox(
          height: 60.v,
          child: Consumer(builder: (context, ref, _) {
            return ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 20.h);
                },
                itemCount: ref
                        .watch(mobilePrepaidOneNotifier)
                        .mobilePrepaidOneModelObj
                        ?.profilelist1ItemList
                        .length ??
                    0,
                itemBuilder: (context, index) {
                  Profilelist1ItemModel model = ref
                          .watch(mobilePrepaidOneNotifier)
                          .mobilePrepaidOneModelObj
                          ?.profilelist1ItemList[index] ??
                      Profilelist1ItemModel();
                  return Profilelist1ItemWidget(model);
                });
          }))
    ]);
  }

  /// Section Widget
  Widget _buildSeventyOne(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_all_contact".tr, style: theme.textTheme.headlineSmall),
      SizedBox(height: 25.v),
      Container(
          margin: EdgeInsets.only(right: 14.h),
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
          decoration: AppDecoration.white,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("lbl_a".tr, style: theme.textTheme.headlineMedium),
            SizedBox(height: 9.v),
            Divider(color: appTheme.gray400),
            SizedBox(height: 19.v),
            Consumer(builder: (context, ref, _) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 16.v);
                  },
                  itemCount: ref
                          .watch(mobilePrepaidOneNotifier)
                          .mobilePrepaidOneModelObj
                          ?.fortytwoItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    FortytwoItemModel model = ref
                            .watch(mobilePrepaidOneNotifier)
                            .mobilePrepaidOneModelObj
                            ?.fortytwoItemList[index] ??
                        FortytwoItemModel();
                    return FortytwoItemWidget(model, onTapAngelinaDruff: () {
                      onTapAngelinaDruff(context);
                    });
                  });
            }),
            SizedBox(height: 3.v)
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildSixtyOne(BuildContext context) {
    return Column(children: [
      Text("lbl_b".tr, style: theme.textTheme.headlineMedium),
      SizedBox(height: 9.v),
      Divider(color: appTheme.gray400),
      SizedBox(height: 19.v),
      Consumer(builder: (context, ref, _) {
        return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 16.v);
            },
            itemCount: ref
                    .watch(mobilePrepaidOneNotifier)
                    .mobilePrepaidOneModelObj
                    ?.thirtysevenItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              ThirtysevenItemModel model = ref
                      .watch(mobilePrepaidOneNotifier)
                      .mobilePrepaidOneModelObj
                      ?.thirtysevenItemList[index] ??
                  ThirtysevenItemModel();
              return ThirtysevenItemWidget(model);
            });
      })
    ]);
  }

  /// Section Widget
  Widget _buildB(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Container(
            margin: EdgeInsets.only(right: 14.h),
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
            decoration: AppDecoration.white,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              _buildSixtyOne(context),
              SizedBox(height: 16.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgOval3,
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                    radius: BorderRadius.circular(24.h)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_baminu".tr,
                              style: theme.textTheme.titleMedium),
                          SizedBox(height: 2.v),
                          Text("msg_ac_159_107_1396".tr,
                              style:
                                  CustomTextStyles.bodySmallOnPrimaryContainer)
                        ])),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkGray400,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 12.v))
              ]),
              SizedBox(height: 3.v)
            ])));
  }

  /// Navigates to the enterMoneyScreen when the action is triggered.
  onTapAngelinaDruff(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.enterMoneyScreen);
  }
}
