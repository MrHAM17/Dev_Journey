import 'package:flutter/material.dart';
import 'package:the_7_11_hired___job_search/core/app_export.dart';

// ignore: must_be_immutable
class ChinesesItemWidget extends StatelessWidget {
  const ChinesesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Text(
      "Chineses",
      style: theme.textTheme.titleMedium,
    );
  }
}
