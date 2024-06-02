import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

// ignore: must_be_immutable
class FramefourItemWidget extends StatelessWidget {
  const FramefourItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgHibiscusBacter,
      height: 70.adaptSize,
      width: 70.adaptSize,
      radius: BorderRadius.circular(
        5.h,
      ),
    );
  }
}
