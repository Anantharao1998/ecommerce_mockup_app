import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_mockup_app/core/core.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Common Asset Image View widget
class ImageView extends StatelessWidget {
  /// Common Asset Image View widget

  const ImageView({
    required this.file,
    this.height,
    this.fit = BoxFit.fill,
    this.width,
    this.color,
    this.scale,
    this.alignment,
    this.opacity,
    super.key,
  });

  /// Image alignment
  final AlignmentGeometry? alignment;

  /// Image Color
  final Color? color;

  /// asset file path. MUST NOT BE NULL
  final String file;

  /// Image fit. [BoxFit.fill] by default.
  final BoxFit? fit;

  /// Image height
  final double? height;

  /// Image Opacity if needed.
  final double? opacity;

  /// Image scale
  final double? scale;

  /// Image width
  final double? width;

  Widget _getView() {
    final String mimType = file.split('.').last;
    final bool isNetworkImage = file.contains('http');

    return isNetworkImage
        ? _NetworkImage(
            file: file,
            color: color,
            fit: fit,
            height: height,
            width: width,
          )
        : (file.startsWith('/'))
            ? _buildXFileImage(file)
            : mimType.isEmpty
                ? Icon(Icons.image_not_supported_outlined, size: width, color: color)
                : Opacity(
                    opacity: opacity ?? 1,
                    child: _buildImageView(mimType),
                  );
  }

  Widget _buildImageView(final String mimType) {
    switch (mimType) {
      case 'svg':
        return SvgPicture.asset(
          file,
          height: height,
          width: width,
          alignment: alignment ?? Alignment.center,
          fit: fit ?? BoxFit.contain,
          colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
        );
      case 'png':
      case 'jpg':
      case 'jpeg':
        return Image.asset(
          file,
          fit: fit,
          height: height,
          width: width,
          alignment: alignment ?? Alignment.center,
          color: color,
          scale: scale,
        );
      default:
        return Icon(
          Icons.image_not_supported_outlined,
          size: width,
          color: color,
        );
    }
  }

  Widget _buildXFileImage(final String file) {
    final File image = File(file);

    return Image.file(image);
  }

  @override
  Widget build(final BuildContext context) => _getView();
}

class _NetworkImage extends StatelessWidget {
  const _NetworkImage({
    required this.file,
    required this.color,
    required this.fit,
    required this.height,
    required this.width,
  });

  final Color? color;
  final String file;
  final BoxFit? fit;
  final double? height;
  final double? width;

  @override
  Widget build(final BuildContext context) => CachedNetworkImage(
        imageUrl: file,
        color: color,
        fit: fit,
        height: height,
        width: width,
      );
}
