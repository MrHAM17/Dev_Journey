import '../profile_address_details_page/widgets/profileaddressdetails_item_widget.dart';
import 'models/profile_address_details_model.dart';
import 'models/profileaddressdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/utils/validation_functions.dart';
import 'package:the_5_08_shopsie___e_commerce_app/widgets/custom_outlined_button.dart';
import 'package:the_5_08_shopsie___e_commerce_app/widgets/custom_text_form_field.dart';
import 'provider/profile_address_details_provider.dart';

// ignore_for_file: must_be_immutable
class ProfileAddressDetailsPage extends StatefulWidget {
  const ProfileAddressDetailsPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileAddressDetailsPageState createState() =>
      ProfileAddressDetailsPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileAddressDetailsProvider(),
      child: ProfileAddressDetailsPage(),
    );
  }
}

class ProfileAddressDetailsPageState extends State<ProfileAddressDetailsPage>
    with AutomaticKeepAliveClientMixin<ProfileAddressDetailsPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

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
                      _buildAddress1(context),
                      SizedBox(height: 27.v),
                      _buildAddress2(context),
                      SizedBox(height: 28.v),
                      _buildCity(context),
                      SizedBox(height: 26.v),
                      _buildPostalCode(context),
                      SizedBox(height: 27.v),
                      _buildPhoneNumber(context),
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
                      _buildProfileAddressdetails(context),
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
  Widget _buildAddress1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_address_1".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 4.v),
        Selector<ProfileAddressDetailsProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.addressController,
          builder: (context, addressController, child) {
            return CustomTextFormField(
              controller: addressController,
              hintText: "lbl_enter_address".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddress2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_address_2".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 4.v),
        Selector<ProfileAddressDetailsProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.addressController1,
          builder: (context, addressController1, child) {
            return CustomTextFormField(
              controller: addressController1,
              hintText: "lbl_enter_address".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_city".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 3.v),
        Selector<ProfileAddressDetailsProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.cityController,
          builder: (context, cityController, child) {
            return CustomTextFormField(
              controller: cityController,
              hintText: "lbl_enter_your_city".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPostalCode(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_postal_code".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 4.v),
        Selector<ProfileAddressDetailsProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.postalCodeController,
          builder: (context, postalCodeController, child) {
            return CustomTextFormField(
              controller: postalCodeController,
              hintText: "msg_enter_postal_code".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_phone_number".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 4.v),
        Selector<ProfileAddressDetailsProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.phoneNumberController,
          builder: (context, phoneNumberController, child) {
            return CustomTextFormField(
              controller: phoneNumberController,
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
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProfileAddressdetails(BuildContext context) {
    return Consumer<ProfileAddressDetailsProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
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
          itemCount: provider.profileAddressDetailsModelObj
              .profileaddressdetailsItemList.length,
          itemBuilder: (context, index) {
            ProfileaddressdetailsItemModel model = provider
                .profileAddressDetailsModelObj
                .profileaddressdetailsItemList[index];
            return ProfileaddressdetailsItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
