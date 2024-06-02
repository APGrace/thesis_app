import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';
import 'package:thesisapp/presentation/frame_four_page/frame_four_page.dart';
import 'package:thesisapp/presentation/frame_twentythree_screen/frame_twentythree_screen.dart';
import 'package:thesisapp/presentation/frame_ten_screen/frame_ten_screen.dart';
import 'package:thesisapp/presentation/frame_seventeen_screen/frame_seventeen_screen.dart';
import 'package:thesisapp/widgets/custom_bottom_bar.dart';

class FrameFourContainerScreen extends StatefulWidget {
  FrameFourContainerScreen({Key? key}) : super(key: key);

  @override
  _FrameFourContainerScreenState createState() =>
      _FrameFourContainerScreenState();
}

class _FrameFourContainerScreenState extends State<FrameFourContainerScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      body: SafeArea(
        child: _getPage(_selectedIndex),
      ),
      bottomNavigationBar: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          setState(() {
            _selectedIndex = type.index;
          });
        },
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return FrameFourPage();
      case 1:
        return FrameTwentythreeScreen();
      // Add cases for other pages if needed
      case 2:
        return FrameTenScreen();
      case 3:
        return FrameSeventeenScreen();
      default:
        return Container(); // Handle appropriately
    }
  }
}
