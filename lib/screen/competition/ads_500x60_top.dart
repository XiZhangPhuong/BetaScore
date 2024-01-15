import 'package:developfootball/util/image_path.dart';
import 'package:flutter/material.dart';

class AdsBanner extends StatelessWidget {
  const AdsBanner(
      {super.key,
      required this.wight,
      required this.height,
      this.title,
      this.color,
      this.textStyle});
  final double wight;
  final double height;
  final String? title;
  final Color? color;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: wight,
      color: color ?? ImagePath.colorBannerred,
      child: Center(
        child: Text(
          title ?? '${wight}X${height}',
          style: textStyle ??
              TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
