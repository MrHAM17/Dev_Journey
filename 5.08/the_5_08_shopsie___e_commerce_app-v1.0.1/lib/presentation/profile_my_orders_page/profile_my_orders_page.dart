import '../profile_my_orders_page/widgets/orderslist_item_widget.dart';
import 'models/orderslist_item_model.dart';
import 'models/profile_my_orders_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'provider/profile_my_orders_provider.dart';

// ignore_for_file: must_be_immutable
class ProfileMyOrdersPage extends StatefulWidget {
  const ProfileMyOrdersPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileMyOrdersPageState createState() => ProfileMyOrdersPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileMyOrdersProvider(),
      child: ProfileMyOrdersPage(),
    );
  }
}

class ProfileMyOrdersPageState extends State<ProfileMyOrdersPage>
    with AutomaticKeepAliveClientMixin<ProfileMyOrdersPage> {
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
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 38.v),
              _buildTwentyNine(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_orders".tr,
            style: CustomTextStyles.titleSmallOnPrimarySemiBold_1,
          ),
          SizedBox(height: 20.v),
          Consumer<ProfileMyOrdersProvider>(
            builder: (context, provider, child) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 7.5.v),
                    child: SizedBox(
                      width: 358.h,
                      child: Divider(
                        height: 1.v,
                        thickness: 1.v,
                        color: appTheme.gray300,
                      ),
                    ),
                  );
                },
                itemCount:
                    provider.profileMyOrdersModelObj.orderslistItemList.length,
                itemBuilder: (context, index) {
                  OrderslistItemModel model = provider
                      .profileMyOrdersModelObj.orderslistItemList[index];
                  return OrderslistItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
