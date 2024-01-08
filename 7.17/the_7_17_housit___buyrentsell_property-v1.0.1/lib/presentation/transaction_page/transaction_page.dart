import '../transaction_page/widgets/transaction_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key})
      : super(
          key: key,
        );

  @override
  TransactionPageState createState() => TransactionPageState();
}

class TransactionPageState extends State<TransactionPage>
    with AutomaticKeepAliveClientMixin<TransactionPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10.v,
                            bottom: 7.v,
                          ),
                          child: Text(
                            "2",
                            style: CustomTextStyles.titleMediumBold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            top: 9.v,
                            bottom: 8.v,
                          ),
                          child: Text(
                            "transactions",
                            style: CustomTextStyles.titleMediumMedium,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 93.h,
                          padding: EdgeInsets.symmetric(vertical: 8.v),
                          decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 24.v,
                                width: 36.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12.h,
                                  vertical: 6.v,
                                ),
                                decoration: AppDecoration.white.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder12,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGridBlueGray80001,
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  alignment: Alignment.center,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant
                                    .imgIconHorizontalOnprimarycontainer,
                                height: 12.adaptSize,
                                width: 12.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 6.v),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.v),
                    _buildTransaction(context),
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
  Widget _buildTransaction(BuildContext context) {
    return SizedBox(
      height: 231.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 7.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return TransactionItemWidget();
        },
      ),
    );
  }
}
