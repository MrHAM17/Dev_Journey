import '../interests_screen/widgets/intrestrow1_item_widget.dart';
import 'models/intrestrow1_item_model.dart';
import 'notifier/interests_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_05_blog_app/core/app_export.dart';
import 'package:the_6_05_blog_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_6_05_blog_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_6_05_blog_app/widgets/custom_elevated_button.dart';

class InterestsScreen extends ConsumerStatefulWidget {
  const InterestsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  InterestsScreenState createState() => InterestsScreenState();
}

class InterestsScreenState extends ConsumerState<InterestsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 23.v,
          ),
          child: Column(
            children: [
              Text(
                "msg_what_are_you_interested".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 7.v),
              SizedBox(
                width: 232.h,
                child: Text(
                  "msg_add_or_edit_topics".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeGray600.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              _buildIntrestRow1(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildNext(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_welcome".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildIntrestRow1(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return Wrap(
          runSpacing: 12.v,
          spacing: 12.h,
          children: List<Widget>.generate(
            ref
                    .watch(interestsNotifier)
                    .interestsModelObj
                    ?.intrestrow1ItemList
                    .length ??
                0,
            (index) {
              Intrestrow1ItemModel model = ref
                      .watch(interestsNotifier)
                      .interestsModelObj
                      ?.intrestrow1ItemList[index] ??
                  Intrestrow1ItemModel();

              return Intrestrow1ItemWidget(
                model,
                onSelectedChipView1: (value) {
                  ref
                      .read(interestsNotifier.notifier)
                      .onSelectedChipView1(index, value);
                },
              );
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_next".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 20.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimary,
    );
  }
}
