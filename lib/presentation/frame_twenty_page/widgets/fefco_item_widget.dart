import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';
// ignore: must_be_immutable

class FefcoItemWidget extends StatelessWidget {
  const FefcoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: CustomImageView(
          imagePath: ImageConstant.img58676233196f149e16fc075x75,
          height: 75.adaptSize,
          width: 75.adaptSize,
          radius: BorderRadius.circular(
            5.h,
          ),
        ),
      ),
    );
  }
}
