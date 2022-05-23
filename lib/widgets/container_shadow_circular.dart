import 'package:flutter/material.dart';

class ContainerShadowCircular extends StatelessWidget {
  final double? height, width;
  final Widget? childWidget;
  final double? topLeftRadius;
  final double? topRightRadius;
  final double? bottomLeftRadius;
  final double? bottomRightRadius;

  const ContainerShadowCircular({
    Key? key,
    this.height,
    this.width,
    required this.childWidget,
    required this.topLeftRadius,
    required this.topRightRadius,
    required this.bottomLeftRadius,
    required this.bottomRightRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      height: height ?? 85.0,
      width: width,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeftRadius!),
          topRight: Radius.circular(topRightRadius!),
          bottomLeft: Radius.circular(bottomLeftRadius!),
          bottomRight: Radius.circular(bottomRightRadius!),
        ),
      ),
      child: childWidget,
    );
  }
}
