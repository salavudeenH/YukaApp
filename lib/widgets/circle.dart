import 'package:flutter/material.dart';

class OFFCircleWidget extends StatelessWidget {
  final List<Color>? gradient;
  final Color? color;
  final double size;
  final Widget? child;

  OFFCircleWidget({this.gradient, this.color, this.size = 25.0, this.child})
      : assert(gradient != null || color != null);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size,
        height: size,
        child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                gradient: gradient != null
                    ? LinearGradient(
                        begin: AlignmentDirectional.topStart,
                        end: AlignmentDirectional.bottomEnd,
                        colors: gradient!)
                    : null,
                color: color != null ? color : null,
                shape: BoxShape.circle),
            child: child));
  }
}
