import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

// ignore: must_be_immutable
class PriceItemWidget extends StatelessWidget {
  const PriceItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 13.v,
              bottom: 24.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Date | 01/03/24",
                  style: CustomTextStyles.titleSmallBlack900,
                ),
                SizedBox(height: 5.v),
                Text(
                  "Picture changed",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img58676233196f149e16fc03,
            height: 75.adaptSize,
            width: 75.adaptSize,
            radius: BorderRadius.vertical(
              top: Radius.circular(5.h),
            ),
          ),
        ],
      ),
    );
  }
}
