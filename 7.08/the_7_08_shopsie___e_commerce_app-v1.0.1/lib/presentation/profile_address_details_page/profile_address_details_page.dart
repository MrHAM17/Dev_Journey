import '../profile_address_details_page/widgets/profileaddressdetails_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/custom_outlined_button.dart';
import 'package:the_7_08_shopsie___e_commerce_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileAddressDetailsPage extends StatefulWidget {
  const ProfileAddressDetailsPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileAddressDetailsPageState createState() =>
      ProfileAddressDetailsPageState();
}

class ProfileAddressDetailsPageState extends State<ProfileAddressDetailsPage>
    with AutomaticKeepAliveClientMixin<ProfileAddressDetailsPage> {
  TextEditingController addressController = TextEditingController();

  TextEditingController addressController1 = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController postalCodeController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
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
                        text: "Add Another Address",
                      ),
                      SizedBox(height: 26.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Current addresses",
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
          "Address 1",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 4.v),
        CustomTextFormField(
          controller: addressController,
          hintText: "Enter address",
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
          "Address 2",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 4.v),
        CustomTextFormField(
          controller: addressController1,
          hintText: "Enter address",
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
          "City",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 3.v),
        CustomTextFormField(
          controller: cityController,
          hintText: "Enter your city",
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
          "Postal Code",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 4.v),
        CustomTextFormField(
          controller: postalCodeController,
          hintText: "Enter postal code",
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
          "Phone number",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 4.v),
        CustomTextFormField(
          controller: phoneNumberController,
          hintText: "Enter phone number",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.phone,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 15.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProfileAddressdetails(BuildContext context) {
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
      itemCount: 2,
      itemBuilder: (context, index) {
        return ProfileaddressdetailsItemWidget();
      },
    );
  }
}
