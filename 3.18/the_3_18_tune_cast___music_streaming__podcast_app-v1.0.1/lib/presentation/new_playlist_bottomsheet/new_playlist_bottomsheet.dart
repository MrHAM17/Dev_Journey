import 'bloc/new_playlist_bloc.dart';
import 'models/new_playlist_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/custom_drop_down.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/custom_outlined_button.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NewPlaylistBottomsheet extends StatelessWidget {
  const NewPlaylistBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NewPlaylistBloc>(
      create: (context) => NewPlaylistBloc(NewPlaylistState(
        newPlaylistModelObj: NewPlaylistModel(),
      ))
        ..add(NewPlaylistInitialEvent()),
      child: NewPlaylistBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray1001.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame,
            height: 3.v,
            width: 38.h,
          ),
          SizedBox(height: 26.v),
          Text(
            "lbl_new_playlist".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 21.v),
          Divider(),
          SizedBox(height: 23.v),
          _buildLabel(context),
          SizedBox(height: 24.v),
          _buildDate(context),
          SizedBox(height: 24.v),
          BlocSelector<NewPlaylistBloc, NewPlaylistState, NewPlaylistModel?>(
            selector: (state) => state.newPlaylistModelObj,
            builder: (context, newPlaylistModelObj) {
              return CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconBottom,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                hintText: "lbl_public".tr,
                items: newPlaylistModelObj?.dropdownItemList ?? [],
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(20.h, 18.v, 12.h, 18.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEyeGray90001,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 56.v,
                ),
                onChanged: (value) {
                  context
                      .read<NewPlaylistBloc>()
                      .add(ChangeDropDownEvent(value: value));
                },
              );
            },
          ),
          SizedBox(height: 24.v),
          Divider(),
          SizedBox(height: 23.v),
          _buildAutoLayoutHorizontal(context),
          SizedBox(height: 28.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLabel(BuildContext context) {
    return BlocSelector<NewPlaylistBloc, NewPlaylistState,
        TextEditingController?>(
      selector: (state) => state.labelController,
      builder: (context, labelController) {
        return CustomTextFormField(
          controller: labelController,
          hintText: "msg_most_popular_songs".tr,
          borderDecoration: TextFormFieldStyleHelper.fillGrayTL16,
          fillColor: appTheme.gray50,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return BlocSelector<NewPlaylistBloc, NewPlaylistState,
        TextEditingController?>(
      selector: (state) => state.dateController,
      builder: (context, dateController) {
        return CustomTextFormField(
          controller: dateController,
          hintText: "msg_most_popular_songs2".tr,
          textInputAction: TextInputAction.done,
          borderDecoration: TextFormFieldStyleHelper.fillGrayTL16,
          fillColor: appTheme.gray50,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCancel(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "lbl_cancel".tr,
        margin: EdgeInsets.only(right: 6.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildCreate(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_create".tr,
        margin: EdgeInsets.only(left: 6.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCancel(context),
        _buildCreate(context),
      ],
    );
  }
}
