import 'package:flutter/material.dart';
import '../presentation/frame_one_screen/frame_one_screen.dart';
import '../presentation/frame_two_screen/frame_two_screen.dart';
import '../presentation/frame_seven_screen/frame_seven_screen.dart';
import '../presentation/frame_three_screen/frame_three_screen.dart';
import '../presentation/frame_four_container_screen/frame_four_container_screen.dart';
import '../presentation/frame_twentyone_screen/frame_twentyone_screen.dart';
import '../presentation/frame_eighteen_screen/frame_eighteen_screen.dart';
import '../presentation/frame_nineteen_tab_container_screen/frame_nineteen_tab_container_screen.dart';
import '../presentation/frame_ten_screen/frame_ten_screen.dart';
import '../presentation/frame_seventeen_screen/frame_seventeen_screen.dart';
import '../presentation/frame_twentythree_screen/frame_twentythree_screen.dart';
//import '../presentation/frame_five_screen/frame_five_screen.dart';
import '../presentation/frame_six_screen/frame_six_screen.dart';
import '../presentation/frame_eleven_screen/frame_eleven_screen.dart';
import '../presentation/frame_twelve_screen/frame_twelve_screen.dart';
import '../presentation/frame_thirteen_screen/frame_thirteen_screen.dart';
import '../presentation/frame_fourteen_screen/frame_fourteen_screen.dart';
import '../presentation/frame_fifteen_screen/frame_fifteen_screen.dart';
import '../presentation/frame_sixteen_screen/frame_sixteen_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:thesisapp/presentation/camera_screen/camera_screen.dart';

class AppRoutes {
  static const String frameOneScreen = '/frame_one_screen';

  static const String cameraScreen = '/camera_screen';

  static const String frameTwoScreen = '/frame_two_screen';

  static const String frameSevenScreen = '/frame_seven_screen';

  static const String frameThreeScreen = '/frame_three_screen';
  static const String frameFourPage = '/frame_four_page';
  static const String frameFourContainerScreen = '/frame_four_container_screen';
  static const String frameTwentyoneScreen = '/frame_twentyone_screen';
  static const String frameEighteenScreen = '/frame_eighteen_screen';
  static const String frameNineteenPage = '/frame_nineteen_page';
  static const String frameNineteenTabContainerScreen =
      '/frame_nineteen_tab_container_screen';
  static const String frameTwentyPage = '/frame_twenty_page';
  static const String frameTenScreen = '/frame_ten_screen';
  static const String frameSeventeenScreen = '/frame_seventeen_screen';
  static const String frameTwentythreeScreen = '/frame_twentythree_screen';
  static const String frameFiveScreen = '/frame_five_screen';
  static const String frameSixScreen = '/frame_six_screen';
  static const String frameElevenScreen = '/frame_eleven_screen';
  static const String frameTwelveScreen = '/frame_twelve_screen';
  static const String frameThirteenScreen = '/frame_thirteen_screen';
  static const String frameFourteenScreen = '/frame_fourteen_screen';
  static const String frameFifteenScreen = '/frame_fifteen_screen';
  static const String frameSixteenScreen = '/frame_sixteen_screen';
  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    frameOneScreen: (context) => FrameOneScreen(),
    cameraScreen: (context) => CameraScreen(),
    frameTwoScreen: (context) => FrameTwoScreen(),
    frameSevenScreen: (context) => FrameSevenScreen(),
    frameThreeScreen: (context) => FrameThreeScreen(),
    frameFourContainerScreen: (context) => FrameFourContainerScreen(),
    frameTwentyoneScreen: (context) => FrameTwentyoneScreen(),
    frameEighteenScreen: (context) => FrameEighteenScreen(),
    frameNineteenTabContainerScreen: (context) =>
        FrameNineteenTabContainerScreen(),
    frameTenScreen: (context) => FrameTenScreen(),
    frameSeventeenScreen: (context) => FrameSeventeenScreen(),
    frameTwentythreeScreen: (context) => FrameTwentythreeScreen(),
    //frameFiveScreen: (context) => FrameFiveScreen(),
    frameSixScreen: (context) => FrameSixScreen(),
    frameElevenScreen: (context) => FrameElevenScreen(),
    frameTwelveScreen: (context) => FrameTwelveScreen(),
    frameThirteenScreen: (context) => FrameThirteenScreen(),
    frameFourteenScreen: (context) => FrameFourteenScreen(),
    frameFifteenScreen: (context) => FrameFifteenScreen(),
    frameSixteenScreen: (context) => FrameSixteenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
