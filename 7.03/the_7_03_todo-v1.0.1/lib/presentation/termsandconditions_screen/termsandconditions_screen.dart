import 'package:flutter/material.dart';
import 'package:the_7_03_todo/core/app_export.dart';
import 'package:the_7_03_todo/widgets/custom_icon_button.dart';

class TermsandconditionsScreen extends StatelessWidget {
  const TermsandconditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 43.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          onTap: () {
                            onTapBtnArrowLeft(context);
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft)),
                      SizedBox(height: 79.v),
                      SizedBox(
                          width: 155.h,
                          child: Text("Terms and Conditions",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineMedium!
                                  .copyWith(height: 1.36))),
                      SizedBox(height: 63.v),
                      Container(
                          width: 285.h,
                          margin: EdgeInsets.only(right: 25.h),
                          child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla fermentum netus amet risus commodo amet vulputate tellus. Et quis ornare sed diam in. Id nibh mattis quis fermentum non malesuada. Vel ullamcorper lacus, mollis pellentesque egestas aliquet aliquam. Risus lorem velit, nunc id ornare diam. Odio diam egestas vulputate tristique mi aliquam eget. Feugiat mi sed semper faucibus tellus aliquam nulla ullamcorper arcu. Est in risus pulvinar arcu pretium dui eget pretium. Nunc, sed scelerisque id varius.\nVulputate vel aliquam suscipit vitae, nullam pretium. Ut sed elementum eget id pellentesque. Odio placerat faucibus purus rhoncus, pharetra commodo. Augue a duis vitae tempor lobortis. Aliquam nunc amet fermentum, aliquet elementum ac neque, convallis. Fames nulla ornare diam odio enim. Enim, pellentesque ",
                              maxLines: 20,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallOnPrimary_1
                                  .copyWith(height: 2.00))),
                      SizedBox(height: 2.v)
                    ]))));
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
