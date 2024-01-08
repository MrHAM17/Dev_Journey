import '../profile_address_details_page/widgets/profileaddressdetails_item_widget.dart';
import 'controller/profile_address_details_controller.dart';
import 'models/profile_address_details_model.dart';
import 'models/profileaddressdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_4_08_shopsie___e_commerce_app/core/utils/validation_functions.dart';
import 'package:the_4_08_shopsie___e_commerce_app/widgets/custom_outlined_button.dart';
import 'package:the_4_08_shopsie___e_commerce_app/widgets/custom_text_form_field.dart';

class ProfileAddressDetailsPage extends StatelessWidget {
  ProfileAddressDetailsPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ProfileAddressDetailsController controller = Get.put(
      ProfileAddressDetailsController(ProfileAddressDetailsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 38.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      _buildAddress1(),
                      SizedBox(height: 27.v),
                      _buildAddress2(),
                      SizedBox(height: 28.v),
                      _buildCity(),
                      SizedBox(height: 26.v),
                      _buildPostalCode(),
                      SizedBox(height: 27.v),
                      _buildPhoneNumber(),
                      SizedBox(height: 24.v),
                      CustomOutlinedButton(
                        text: "msg_add_another_address".tr,
                      ),
                      SizedBox(height: 26.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "msg_current_addresses".tr,
                          style: CustomTextStyles.titleSmallOnPrimarySemiBold_1,
                        ),
                      ),
                      SizedBox(height: 20.v),
                      _buildProfileAddressdetails(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_address_1".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 4.v),
        CustomTextFormField(
          controller: controller.addressController,
          hintText: "lbl_enter_address".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddress2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_address_2".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 4.v),
        CustomTextFormField(
          controller: controller.addressController1,
          hintText: "lbl_enter_address".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCity() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_city".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 3.v),
        CustomTextFormField(
          controller: controller.cityController,
          hintText: "lbl_enter_your_city".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPostalCode() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_postal_code".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 4.v),
        CustomTextFormField(
          controller: controller.postalCodeController,
          hintText: "msg_enter_postal_code".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_phone_number".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 4.v),
        CustomTextFormField(
          controller: controller.phoneNumberController,
          hintText: "msg_enter_phone_number".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.phone,
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          },
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 15.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProfileAddressdetails() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 24.v,
          );
        },
        itemCount: controller.profileAddressDetailsModelObj.value
            .profileaddressdetailsItemList.value.length,
        itemBuilder: (context, index) {
          ProfileaddressdetailsItemModel model = controller
              .profileAddressDetailsModelObj
              .value
              .profileaddressdetailsItemList
              .value[index];
          return ProfileaddressdetailsItemWidget(
            model,
          );
        },
      ),
    );
  }
}
