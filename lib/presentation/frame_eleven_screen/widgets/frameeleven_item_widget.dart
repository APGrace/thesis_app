import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';
import 'package:thesisapp/presentation/frame_twelve_screen/frame_twelve_screen.dart';

// ignore: must_be_immutable
class FrameelevenItemWidget extends StatelessWidget {
  final String diseaseName;
  final String imagePath;

  const FrameelevenItemWidget({
    Key? key,
    required this.diseaseName,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to FrameTwelveScreen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FrameTwelveScreen()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(12.h),
        decoration: AppDecoration.outlineBlack900.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 8.v),
            CustomImageView(
              imagePath: imagePath,
              height: 75.v,
              width: 106.h,
            ),
            SizedBox(height: 12.v),
            Container(
              decoration: AppDecoration.outlineBlack,
              child: Text(
                diseaseName,
                style: CustomTextStyles.labelLargePrimaryContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
