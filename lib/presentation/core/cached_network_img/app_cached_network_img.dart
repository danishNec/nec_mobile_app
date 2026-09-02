import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shimmer/app_shimmer.dart';

/// A widget that displays a cached network image with optional placeholders,
/// error widgets, and customizable styling.
class AppCachedNetworkImg extends StatelessWidget {
  /// The URL of the image to be displayed.
  final String imageUrl;

  /// The width of the image. If null, the image will take its natural width.
  final double? width;

  /// The height of the image. If null, the image will take its natural height.
  final double? height;

  /// How the image should be inscribed into the space allocated during layout.
  /// Defaults to [BoxFit.cover].
  final BoxFit fit;

  /// The border radius to apply to the image. If null, no border radius is applied.
  final BorderRadius? borderRadius;

  /// A widget to display while the image is loading. If null, a default shimmer
  /// effect is used.
  final Widget? placeholder;

  /// A widget to display if the image fails to load. If null, a default error
  /// icon is used.
  final Widget? errorWidget;

  /// The theme to apply to the placeholder or error widget. If null, the default
  /// theme is used.
  final ThemeData? theme;

  /// Creates an instance of [AppCachedNetworkImg].
  const AppCachedNetworkImg({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.placeholder,
    this.errorWidget,
    this.theme,
  });

  /// Checks if the provided URL is valid and absolute (http/https).
  ///
  /// Returns `true` if the URL is valid, otherwise `false`.
  bool _isValidUrl(String url) {
    if (url.isEmpty) return false;
    final uri = Uri.tryParse(url);
    return uri != null &&
        uri.hasAbsolutePath &&
        (uri.hasScheme && (uri.scheme == 'http' || uri.scheme == 'https'));
  }

  @override
  Widget build(BuildContext context) {
    final radius = borderRadius ?? BorderRadius.zero;

    // If the URL is invalid or empty, show the error widget immediately.
    if (!_isValidUrl(imageUrl)) {
      return Center(
        child: ClipRRect(
          borderRadius: radius,
          child: errorWidget ??
              Icon(Icons.broken_image, size: 40.sp, color: Colors.grey),
        ),
      );
    }

    // Otherwise, load the image using CachedNetworkImage.
    return ClipRRect(
      borderRadius: radius,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: fit,
        placeholder: (_, __) =>
            placeholder ??
            _DefaultShimmer(width: width, height: height, theme: theme),
        errorWidget: (_, __, ___) =>
            errorWidget ??
            Icon(Icons.broken_image, size: 40.sp, color: Colors.grey),
      ),
    );
  }
}

/// A default shimmer effect widget used as a placeholder while the image is loading.
class _DefaultShimmer extends StatelessWidget {
  /// The width of the shimmer effect. If null, it defaults to `double.infinity`.
  final double? width;

  /// The height of the shimmer effect. If null, it defaults to 200 logical pixels.
  final double? height;

  /// The theme to apply to the shimmer effect. If null, the default theme is used.
  final ThemeData? theme;

  /// Creates an instance of [_DefaultShimmer].
  const _DefaultShimmer({this.width, this.height, this.theme});

  @override
  Widget build(BuildContext context) {
    return AppShimmer(
      width: width ?? double.infinity,
      height: height ?? 200.h,
      borderRadius: BorderRadius.zero
    );
  }
}
