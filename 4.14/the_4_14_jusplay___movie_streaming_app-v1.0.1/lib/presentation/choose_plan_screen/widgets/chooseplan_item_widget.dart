import '../controller/choose_plan_controller.dart';
import '../models/chooseplan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/custom_elevated_button.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class ChooseplanItemWidget extends StatelessWidget {
  ChooseplanItemWidget(
    this.chooseplanItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChooseplanItemModel chooseplanItemModelObj;

  var controller = Get.find<ChoosePlanController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.cardBg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => Text(
              chooseplanItemModelObj.voucher!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextFormField(
                width: 202.h,
                controller: chooseplanItemModelObj.inputsFiedController,
                hintText: "msg_have_a_vucher_code".tr,
                hintStyle: CustomTextStyles.bodySmallPrimaryContainer,
                textInputAction: TextInputAction.done,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 11.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                filled: true,
                fillColor: appTheme.blueGray800,
              ),
              CustomElevatedButton(
                height: 39.v,
                width: 80.h,
                text: "lbl_apply".tr,
                buttonStyle: CustomButtonStyles.fillPrimaryTL18,
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
