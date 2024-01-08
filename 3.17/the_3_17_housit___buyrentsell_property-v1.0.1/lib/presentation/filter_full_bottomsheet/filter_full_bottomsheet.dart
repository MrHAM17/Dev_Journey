import '../filter_full_bottomsheet/widgets/widget2_item_widget.dart';
import '../filter_full_bottomsheet/widgets/widget_item_widget.dart';
import 'bloc/filter_full_bloc.dart';
import 'dart:async';
import 'models/filter_full_model.dart';
import 'models/widget2_item_model.dart';
import 'models/widget_item_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:the_3_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';
import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_search_view.dart';
import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FilterFullBottomsheet extends StatelessWidget {
  FilterFullBottomsheet({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  static Widget builder(BuildContext context) {
    return BlocProvider<FilterFullBloc>(
      create: (context) => FilterFullBloc(FilterFullState(
        filterFullModelObj: FilterFullModel(),
      ))
        ..add(FilterFullInitialEvent()),
      child: FilterFullBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 23.h,
          vertical: 24.v,
        ),
        child: Column(
          children: [
            SizedBox(height: 3.v),
            _buildReset(context),
            SizedBox(height: 39.v),
            _buildSellType(context),
            SizedBox(height: 31.v),
            _buildPrice(context),
            SizedBox(height: 166.v),
            _buildEnvironment(context),
            SizedBox(height: 38.v),
            CustomElevatedButton(
              text: "lbl_apply_filter".tr,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLocation(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(
                "lbl_location".tr,
                style: CustomTextStyles.titleMediumBold,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgGroup,
              height: 4.adaptSize,
              width: 4.adaptSize,
              margin: EdgeInsets.only(
                left: 5.h,
                bottom: 20.v,
              ),
            ),
          ],
        ),
        SizedBox(height: 16.v),
        BlocSelector<FilterFullBloc, FilterFullState, TextEditingController?>(
          selector: (state) => state.searchController,
          builder: (context, searchController) {
            return CustomSearchView(
              controller: searchController,
              hintText: "lbl_semarang".tr,
              contentPadding: EdgeInsets.symmetric(vertical: 26.v),
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLayout(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Container(
        height: 200.v,
        width: 327.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: 200.v,
              width: 327.h,
              child: GoogleMap(
                //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                  target: LatLng(
                    37.43296265331129,
                    -122.08832357078792,
                  ),
                  zoom: 14.4746,
                ),
                onMapCreated: (GoogleMapController controller) {
                  googleMapController.complete(controller);
                },
                zoomControlsEnabled: false,
                zoomGesturesEnabled: false,
                myLocationButtonEnabled: false,
                myLocationEnabled: false,
              ),
            ),
            CustomElevatedButton(
              height: 50.v,
              width: 327.h,
              text: "lbl_select_on_map".tr,
              buttonStyle: CustomButtonStyles.fillWhiteA2,
              buttonTextStyle: theme.textTheme.titleSmall!,
              alignment: Alignment.bottomCenter,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgThumbsUpOrange300,
              height: 51.v,
              width: 34.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 44.v,
                right: 132.h,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildReset(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 60.h,
          child: Divider(),
        ),
        SizedBox(height: 33.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 16.v,
                bottom: 11.v,
              ),
              child: Text(
                "lbl_filter".tr,
                style: CustomTextStyles.titleMediumBold,
              ),
            ),
            CustomElevatedButton(
              height: 50.v,
              width: 88.h,
              text: "lbl_reset".tr,
              buttonStyle: CustomButtonStyles.fillRedATL25,
              buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
            ),
          ],
        ),
        SizedBox(height: 160.v),
        _buildLocation(context),
        SizedBox(height: 15.v),
        _buildLayout(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildSellType(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_sell_type".tr,
          style: CustomTextStyles.titleMediumBold,
        ),
        SizedBox(height: 14.v),
        BlocSelector<FilterFullBloc, FilterFullState, FilterFullModel?>(
          selector: (state) => state.filterFullModelObj,
          builder: (context, filterFullModelObj) {
            return Wrap(
              runSpacing: 6.v,
              spacing: 6.h,
              children: List<Widget>.generate(
                filterFullModelObj?.widgetItemList.length ?? 0,
                (index) {
                  WidgetItemModel model =
                      filterFullModelObj?.widgetItemList[index] ??
                          WidgetItemModel();

                  return WidgetItemWidget(
                    model,
                    onSelectedChipView: (value) {
                      context.read<FilterFullBloc>().add(
                          UpdateChipViewEvent(index: index, isSelected: value));
                    },
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(
                "lbl_price".tr,
                style: CustomTextStyles.titleMediumBold,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgGroup,
              height: 4.adaptSize,
              width: 4.adaptSize,
              margin: EdgeInsets.only(
                left: 5.h,
                bottom: 20.v,
              ),
            ),
          ],
        ),
        SizedBox(height: 16.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlocSelector<FilterFullBloc, FilterFullState,
                TextEditingController?>(
              selector: (state) => state.priceController,
              builder: (context, priceController) {
                return CustomTextFormField(
                  width: 138.h,
                  controller: priceController,
                  hintText: "lbl_150".tr,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 25.v, 20.h, 24.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconDollarFill,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 70.v,
                  ),
                  contentPadding: EdgeInsets.only(
                    top: 26.v,
                    right: 30.h,
                    bottom: 26.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillGrayTL25,
                );
              },
            ),
            CustomImageView(
              imagePath: ImageConstant.imgShare,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 25.v),
            ),
            BlocSelector<FilterFullBloc, FilterFullState,
                TextEditingController?>(
              selector: (state) => state.formValueController,
              builder: (context, formValueController) {
                return CustomTextFormField(
                  width: 138.h,
                  controller: formValueController,
                  hintText: "lbl_350".tr,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 25.v, 20.h, 24.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconDollarFill,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 70.v,
                  ),
                  contentPadding: EdgeInsets.only(
                    top: 26.v,
                    right: 30.h,
                    bottom: 26.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillGrayTL25,
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEnvironment(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_environment_facilities".tr,
          style: CustomTextStyles.titleMediumBold,
        ),
        SizedBox(height: 16.v),
        BlocSelector<FilterFullBloc, FilterFullState, FilterFullModel?>(
          selector: (state) => state.filterFullModelObj,
          builder: (context, filterFullModelObj) {
            return Wrap(
              runSpacing: 10.v,
              spacing: 10.h,
              children: List<Widget>.generate(
                filterFullModelObj?.widget2ItemList.length ?? 0,
                (index) {
                  Widget2ItemModel model =
                      filterFullModelObj?.widget2ItemList[index] ??
                          Widget2ItemModel();

                  return Widget2ItemWidget(
                    model,
                    onSelectedChipView: (value) {
                      context.read<FilterFullBloc>().add(UpdateChipView1Event(
                          index: index, isSelected: value));
                    },
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}