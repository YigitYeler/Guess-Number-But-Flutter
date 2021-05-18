import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GreyMiniContainer extends StatelessWidget {
  double width;

  GreyMiniContainer.large() {
    this.width = Get.width * 0.304;
  }

  GreyMiniContainer.mini() {
    this.width = Get.width * 0.117;
  }

  @override
  Widget build(BuildContext context) {
    double height = Get.height * 0.007;
    //double width = Get.width * 0.117;
    return Container(
      height: height,
      width: this.width,
      color: Color(0xFFD3D7DD),
    );
  }
}
