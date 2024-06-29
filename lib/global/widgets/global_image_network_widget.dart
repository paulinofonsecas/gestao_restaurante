import 'package:flutter/material.dart';

class GlobalImageNetworkWidget extends StatelessWidget {
  const GlobalImageNetworkWidget(
    this.url, {
    this.width,
    this.height,
    this.fit,
    this.borderRadius,
    super.key,
  });

  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(20),
      child: Image.network(
        url,
        width: width,
        height: height,
        fit: fit ?? BoxFit.cover,
      ),
    );
  }
}
