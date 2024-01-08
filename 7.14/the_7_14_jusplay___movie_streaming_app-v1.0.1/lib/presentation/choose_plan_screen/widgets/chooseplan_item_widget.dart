import 'package:flutter/material.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/custom_elevated_button.dart';
import 'package:the_7_14_jusplay___movie_streaming_app/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class ChooseplanItemWidget extends StatelessWidget {
  ChooseplanItemWidget({Key? key})
      : super(
          key: key,
        );

  TextEditingController inputsFiedController = TextEditingController();

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
          Text(
            "Voucher",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextFormField(
                width: 202.h,
                controller: inputsFiedController,
                hintText: "Have a vucher code?",
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
                text: "Apply",
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
