import '../suggested_page/widgets/suggested_item_widget.dart';
import 'models/suggested_item_model.dart';
import 'models/suggested_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'provider/suggested_provider.dart';

// ignore_for_file: must_be_immutable
class SuggestedPage extends StatefulWidget {
  const SuggestedPage({Key? key})
      : super(
          key: key,
        );

  @override
  SuggestedPageState createState() => SuggestedPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SuggestedProvider(),
      child: SuggestedPage(),
    );
  }
}

class SuggestedPageState extends State<SuggestedPage>
    with AutomaticKeepAliveClientMixin<SuggestedPage> {
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
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildSuggested(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSuggested(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Consumer<SuggestedProvider>(
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
            itemCount: provider.suggestedModelObj.suggestedItemList.length,
            itemBuilder: (context, index) {
              SuggestedItemModel model =
                  provider.suggestedModelObj.suggestedItemList[index];
              return SuggestedItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
