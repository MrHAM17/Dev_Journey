import '../models/addnewpropertyreasonsellinghom_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_21_vertex___real_estate_app/core/app_export.dart';

// ignore: must_be_immutable
class AddnewpropertyreasonsellinghomItemWidget extends StatelessWidget {
  AddnewpropertyreasonsellinghomItemWidget(
    this.addnewpropertyreasonsellinghomItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AddnewpropertyreasonsellinghomItemModel
      addnewpropertyreasonsellinghomItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Container(
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 1.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                4.h,
              ),
              border: Border.all(
                color: appTheme.blueGray500,
                width: 1.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 2.v,
            ),
            child: Text(
              addnewpropertyreasonsellinghomItemModelObj.upgradingMyHome!,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
