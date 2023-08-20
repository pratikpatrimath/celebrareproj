import 'package:flutter/material.dart';
import 'package:widget_mask/widget_mask.dart';
class Circle1 extends StatelessWidget {
  const Circle1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: WidgetMask(
          blendMode: BlendMode.srcATop,
          childSaveLayer: true,
          mask: Image.asset('assets/celebrare.png',fit: BoxFit.cover,),
          child: Image.asset('assets/user_image_frame_3.png'),
        ),
      ),
    );
  }
}
