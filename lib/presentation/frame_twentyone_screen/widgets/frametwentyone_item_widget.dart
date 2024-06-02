import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

// ignore: must_be_immutable
class FrametwentyoneItemWidget extends StatelessWidget {
  FrametwentyoneItemWidget({
    Key? key,
    this.onTapTxtZipcode,
  }) : super(
          key: key,
        );

  VoidCallback? onTapTxtZipcode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.adaptSize,
      width: 70.adaptSize,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgHibiscusBacter,
            height: 70.adaptSize,
            width: 70.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                onTapTxtZipcode?.call();
              },
              child: Container(
                width: 70.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 2.v,
                ),
                decoration: AppDecoration.fillBlack.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL5,
                ),
                child: Text(
                  "240617",
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
