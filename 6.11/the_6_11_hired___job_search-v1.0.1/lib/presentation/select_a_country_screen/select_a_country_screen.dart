import 'notifier/select_a_country_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_11_hired___job_search/core/app_export.dart';
import 'package:the_6_11_hired___job_search/widgets/custom_radio_button.dart';

class SelectACountryScreen extends ConsumerStatefulWidget {
  const SelectACountryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SelectACountryScreenState createState() => SelectACountryScreenState();
}

class SelectACountryScreenState extends ConsumerState<SelectACountryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: _buildSelectaCountry(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectaCountry(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 24.v,
                right: 217.h,
              ),
              child: CustomRadioButton(
                text: "lbl_afghanistan".tr,
                value: ref
                        .watch(selectACountryNotifier)
                        .selectACountryModelObj
                        ?.radioList[2] ??
                    "",
                groupValue: ref.watch(selectACountryNotifier).radioGroup,
                onChange: (value) {
                  ref
                      .read(selectACountryNotifier.notifier)
                      .changeRadioButton1(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 22.v,
                right: 253.h,
              ),
              child: CustomRadioButton(
                text: "lbl_albania".tr,
                value: ref
                        .watch(selectACountryNotifier)
                        .selectACountryModelObj
                        ?.radioList[3] ??
                    "",
                groupValue: ref.watch(selectACountryNotifier).radioGroup,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  ref
                      .read(selectACountryNotifier.notifier)
                      .changeRadioButton1(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 24.v,
                right: 256.h,
              ),
              child: CustomRadioButton(
                text: "lbl_algeria".tr,
                value: ref
                        .watch(selectACountryNotifier)
                        .selectACountryModelObj
                        ?.radioList[4] ??
                    "",
                groupValue: ref.watch(selectACountryNotifier).radioGroup,
                onChange: (value) {
                  ref
                      .read(selectACountryNotifier.notifier)
                      .changeRadioButton1(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 22.v,
                right: 248.h,
              ),
              child: CustomRadioButton(
                text: "lbl_andorra".tr,
                value: ref
                        .watch(selectACountryNotifier)
                        .selectACountryModelObj
                        ?.radioList[5] ??
                    "",
                groupValue: ref.watch(selectACountryNotifier).radioGroup,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  ref
                      .read(selectACountryNotifier.notifier)
                      .changeRadioButton1(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 24.v,
                right: 256.h,
              ),
              child: CustomRadioButton(
                text: "lbl_angola".tr,
                value: ref
                        .watch(selectACountryNotifier)
                        .selectACountryModelObj
                        ?.radioList[6] ??
                    "",
                groupValue: ref.watch(selectACountryNotifier).radioGroup,
                onChange: (value) {
                  ref
                      .read(selectACountryNotifier.notifier)
                      .changeRadioButton1(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 22.v,
                right: 148.h,
              ),
              child: CustomRadioButton(
                text: "msg_antigua_and_barbuda".tr,
                value: ref
                        .watch(selectACountryNotifier)
                        .selectACountryModelObj
                        ?.radioList[7] ??
                    "",
                groupValue: ref.watch(selectACountryNotifier).radioGroup,
                onChange: (value) {
                  ref
                      .read(selectACountryNotifier.notifier)
                      .changeRadioButton1(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 22.v,
                right: 234.h,
              ),
              child: CustomRadioButton(
                text: "lbl_argentina".tr,
                value: ref
                        .watch(selectACountryNotifier)
                        .selectACountryModelObj
                        ?.radioList[8] ??
                    "",
                groupValue: ref.watch(selectACountryNotifier).radioGroup,
                onChange: (value) {
                  ref
                      .read(selectACountryNotifier.notifier)
                      .changeRadioButton1(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 22.v,
                right: 234.h,
              ),
              child: CustomRadioButton(
                text: "lbl_argentina".tr,
                value: ref
                        .watch(selectACountryNotifier)
                        .selectACountryModelObj
                        ?.radioList[9] ??
                    "",
                groupValue: ref.watch(selectACountryNotifier).radioGroup,
                onChange: (value) {
                  ref
                      .read(selectACountryNotifier.notifier)
                      .changeRadioButton1(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 22.v,
                right: 246.h,
              ),
              child: CustomRadioButton(
                text: "lbl_armenia".tr,
                value: ref
                        .watch(selectACountryNotifier)
                        .selectACountryModelObj
                        ?.radioList[10] ??
                    "",
                groupValue: ref.watch(selectACountryNotifier).radioGroup,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  ref
                      .read(selectACountryNotifier.notifier)
                      .changeRadioButton1(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 24.v,
                right: 243.h,
              ),
              child: CustomRadioButton(
                text: "lbl_australia".tr,
                value: ref
                        .watch(selectACountryNotifier)
                        .selectACountryModelObj
                        ?.radioList[11] ??
                    "",
                groupValue: ref.watch(selectACountryNotifier).radioGroup,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  ref
                      .read(selectACountryNotifier.notifier)
                      .changeRadioButton1(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 24.v,
                right: 256.h,
              ),
              child: CustomRadioButton(
                text: "lbl_austria".tr,
                value: ref
                        .watch(selectACountryNotifier)
                        .selectACountryModelObj
                        ?.radioList[12] ??
                    "",
                groupValue: ref.watch(selectACountryNotifier).radioGroup,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  ref
                      .read(selectACountryNotifier.notifier)
                      .changeRadioButton1(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 24.v,
                right: 229.h,
              ),
              child: CustomRadioButton(
                text: "lbl_azerbaijan".tr,
                value: ref
                        .watch(selectACountryNotifier)
                        .selectACountryModelObj
                        ?.radioList[13] ??
                    "",
                groupValue: ref.watch(selectACountryNotifier).radioGroup,
                onChange: (value) {
                  ref
                      .read(selectACountryNotifier.notifier)
                      .changeRadioButton1(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(24.h, 22.v, 229.h, 5.v),
              child: CustomRadioButton(
                text: "lbl_azerbaijan".tr,
                value: ref
                        .watch(selectACountryNotifier)
                        .selectACountryModelObj
                        ?.radioList[14] ??
                    "",
                groupValue: ref.watch(selectACountryNotifier).radioGroup,
                onChange: (value) {
                  ref
                      .read(selectACountryNotifier.notifier)
                      .changeRadioButton1(value);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
