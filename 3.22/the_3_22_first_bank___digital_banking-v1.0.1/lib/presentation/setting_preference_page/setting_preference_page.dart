import 'bloc/setting_preference_bloc.dart';
import 'models/setting_preference_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_3_22_first_bank___digital_banking/widgets/custom_elevated_button.dart';
import 'package:the_3_22_first_bank___digital_banking/widgets/custom_switch.dart';
import 'package:the_3_22_first_bank___digital_banking/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SettingPreferencePage extends StatefulWidget {
  const SettingPreferencePage({Key? key})
      : super(
          key: key,
        );

  @override
  SettingPreferencePageState createState() => SettingPreferencePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SettingPreferenceBloc>(
      create: (context) => SettingPreferenceBloc(SettingPreferenceState(
        settingPreferenceModelObj: SettingPreferenceModel(),
      ))
        ..add(SettingPreferenceInitialEvent()),
      child: SettingPreferencePage(),
    );
  }
}

class SettingPreferencePageState extends State<SettingPreferencePage>
    with AutomaticKeepAliveClientMixin<SettingPreferencePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  children: [
                    _buildInputField7(context),
                    SizedBox(height: 17.v),
                    _buildInputField8(context),
                    SizedBox(height: 25.v),
                    _buildNotification(context),
                    SizedBox(height: 15.v),
                    CustomElevatedButton(
                      height: 40.v,
                      text: "lbl_save".tr,
                      buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                      buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputField7(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_currency".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        BlocSelector<SettingPreferenceBloc, SettingPreferenceState,
            TextEditingController?>(
          selector: (state) => state.classicController,
          builder: (context, classicController) {
            return CustomTextFormField(
              controller: classicController,
              hintText: "lbl_usd".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField8(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_time_zone".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        BlocSelector<SettingPreferenceBloc, SettingPreferenceState,
            TextEditingController?>(
          selector: (state) => state.timeController,
          builder: (context, timeController) {
            return CustomTextFormField(
              controller: timeController,
              hintText: "msg_gmt_12_00_international".tr,
              textInputAction: TextInputAction.done,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNotification(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_notification".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 13.v),
        Padding(
          padding: EdgeInsets.only(right: 49.h),
          child: Row(
            children: [
              BlocSelector<SettingPreferenceBloc, SettingPreferenceState,
                  bool?>(
                selector: (state) => state.isSelectedSwitch,
                builder: (context, isSelectedSwitch) {
                  return CustomSwitch(
                    value: isSelectedSwitch,
                    onChange: (value) {
                      context
                          .read<SettingPreferenceBloc>()
                          .add(ChangeSwitchEvent(value: value));
                    },
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 5.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "msg_i_send_or_receive".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.v),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocSelector<SettingPreferenceBloc, SettingPreferenceState, bool?>(
              selector: (state) => state.isSelectedSwitch1,
              builder: (context, isSelectedSwitch1) {
                return CustomSwitch(
                  value: isSelectedSwitch1,
                  onChange: (value) {
                    context
                        .read<SettingPreferenceBloc>()
                        .add(ChangeSwitch1Event(value: value));
                  },
                );
              },
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 4.v,
                bottom: 4.v,
              ),
              child: Text(
                "msg_i_receive_merchant".tr,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
        SizedBox(height: 16.v),
        Padding(
          padding: EdgeInsets.only(right: 38.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocSelector<SettingPreferenceBloc, SettingPreferenceState,
                  bool?>(
                selector: (state) => state.isSelectedSwitch2,
                builder: (context, isSelectedSwitch2) {
                  return CustomSwitch(
                    margin: EdgeInsets.only(
                      top: 5.v,
                      bottom: 6.v,
                    ),
                    value: isSelectedSwitch2,
                    onChange: (value) {
                      context
                          .read<SettingPreferenceBloc>()
                          .add(ChangeSwitch2Event(value: value));
                    },
                  );
                },
              ),
              Expanded(
                child: Container(
                  width: 193.h,
                  margin: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "msg_there_are_recommendation".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
