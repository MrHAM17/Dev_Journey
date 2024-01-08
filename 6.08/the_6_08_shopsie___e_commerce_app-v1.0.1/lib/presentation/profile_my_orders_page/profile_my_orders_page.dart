import '../profile_my_orders_page/widgets/orderslist_item_widget.dart';
import 'models/orderslist_item_model.dart';
import 'notifier/profile_my_orders_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_08_shopsie___e_commerce_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfileMyOrdersPage extends ConsumerStatefulWidget {
  const ProfileMyOrdersPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileMyOrdersPageState createState() => ProfileMyOrdersPageState();
}

class ProfileMyOrdersPageState extends ConsumerState<ProfileMyOrdersPage>
    with AutomaticKeepAliveClientMixin<ProfileMyOrdersPage> {
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
          Consumer(
            builder: (context, ref, _) {
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
                itemCount: ref
                        .watch(profileMyOrdersNotifier)
                        .profileMyOrdersModelObj
                        ?.orderslistItemList
                        .length ??
                    0,
                itemBuilder: (context, index) {
                  OrderslistItemModel model = ref
                          .watch(profileMyOrdersNotifier)
                          .profileMyOrdersModelObj
                          ?.orderslistItemList[index] ??
                      OrderslistItemModel();
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
