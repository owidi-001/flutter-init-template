import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';

class ShimmerBox extends StatelessWidget {
  final double height;
  final double width;
  final double radius;

  const ShimmerBox(
      {super.key, required this.height, required this.width, this.radius = 4});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Shimmer.fromColors(
      baseColor: isDarkMode ? Colors.grey[800]! : Colors.grey[300]!,
      highlightColor: isDarkMode ? Colors.grey[600]! : Colors.grey[100]!,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: isDarkMode ? Colors.grey[800]! : Colors.grey[300]!,
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}

class CachedImage extends StatelessWidget {
  const CachedImage(
      {super.key,
      required this.url,
      required this.height,
      required this.width,
      this.radius});
  final String url;
  final double height;
  final double width;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 0),
      child: CachedNetworkImage(
        imageUrl: url,
        fit: BoxFit.cover,
        height: height,
        width: width,
        placeholder: (context, url) => Center(
            child: ShimmerBox(
          height: height,
          width: width,
          radius: radius ?? 0,
        )),
        errorWidget: (context, url, error) => Image.asset(
          "assets/icons/broken-image.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
