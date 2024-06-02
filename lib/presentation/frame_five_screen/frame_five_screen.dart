import 'package:flutter/material.dart';

import 'package:camera/camera.dart';

import 'package:thesisapp/core/app_export.dart';
import 'package:thesisapp/main.dart';
import 'package:thesisapp/presentation/frame_twentytwo_dialog/frame_twentytwo_dialog.dart';

class FrameFiveScreen extends StatefulWidget {
  const FrameFiveScreen({Key? key}) : super(key: key);

  @override
  State<FrameFiveScreen> createState() => _FrameFiveScreenState();
}

class _FrameFiveScreenState extends State<FrameFiveScreen> {
  late CameraController controller;

  var cameras;

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgHibiscusBacter547x360,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40.adaptSize,
                          margin: EdgeInsets.only(
                            left: 17.h,
                            top: 16.v,
                          ),
                          decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder20,
                          ),
                          child: Text(
                            "x",
                            style: theme.textTheme.headlineMedium,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 300.v,
                          width: 300.h,
                          child: controller.value.isInitialized
                              ? CameraPreview(
                                  controller,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgScanBarCodeL,
                                  ),
                                )
                              : Container(),
                        ),
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.center,
                    //   child: CustomImageView(
                    //     imagePath: ImageConstant.imgScanBarCodeL,
                    //     height: 466.v,
                    //     width: 360.h,
                    //   ),
                    // ),
                  ],
                ),
              ),
              _buildPhotos(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhotos(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 52.h, vertical: 8.v),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img0cbbaab0deff7f1,
                height: 50.adaptSize,
                width: 50.adaptSize,
                alignment: Alignment.topCenter,
              ),
              Text(
                "Photos",
                style: CustomTextStyles.bodySmallInterBlack900,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 51.h,
              // bottom: 14.v,
            ),
            child: Column(
              children: [
                Text(
                  "Identify",
                  style: CustomTextStyles.bodySmallInterLightgreen600,
                ),
                Container(
                  padding: EdgeInsets.all(2.h),
                  decoration: AppDecoration.fillLightgreen60001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder27,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(1.h),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder27,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        onTapView(context);
                      },
                      child: Container(
                        height: 49.adaptSize,
                        width: 49.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.lightGreen60001,
                          borderRadius: BorderRadius.circular(
                            24.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Displays a dialog with the [Frame TwentytwoDialog] content.
  onTapView(BuildContext context) async {
    // TODO: Add logic to capture the camera image. [onTapView] method.

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: FrameTwentytwoDialog(),
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.zero,
        insetPadding: const EdgeInsets.only(left: 0),
      ),
    );
  }
}
