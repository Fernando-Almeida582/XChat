// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class Assets {
  const Assets._();

  static const AssetGenImage a1 = AssetGenImage('assets/1.png');
  static const AssetGenImage a10 = AssetGenImage('assets/10.png');
  static const AssetGenImage a11 = AssetGenImage('assets/11.png');
  static const AssetGenImage a12 = AssetGenImage('assets/12.png');
  static const AssetGenImage a13 = AssetGenImage('assets/13.png');
  static const AssetGenImage a14 = AssetGenImage('assets/14.png');
  static const AssetGenImage a15 = AssetGenImage('assets/15.png');
  static const AssetGenImage a16 = AssetGenImage('assets/16.png');
  static const AssetGenImage a17 = AssetGenImage('assets/17.png');
  static const AssetGenImage a18 = AssetGenImage('assets/18.png');
  static const AssetGenImage a19 = AssetGenImage('assets/19.png');
  static const AssetGenImage a2 = AssetGenImage('assets/2.png');
  static const AssetGenImage a20 = AssetGenImage('assets/20.png');
  static const AssetGenImage a3 = AssetGenImage('assets/3.png');
  static const AssetGenImage a4 = AssetGenImage('assets/4.png');
  static const AssetGenImage a5 = AssetGenImage('assets/5.png');
  static const AssetGenImage a6 = AssetGenImage('assets/6.png');
  static const AssetGenImage a7 = AssetGenImage('assets/7.png');
  static const AssetGenImage a8 = AssetGenImage('assets/8.png');
  static const AssetGenImage a9 = AssetGenImage('assets/9.png');
  static const AssetGenImage background = AssetGenImage(
    'assets/background.png',
  );

  /// List of all assets
  static List<AssetGenImage> get values => [
    a1,
    a10,
    a11,
    a12,
    a13,
    a14,
    a15,
    a16,
    a17,
    a18,
    a19,
    a2,
    a20,
    a3,
    a4,
    a5,
    a6,
    a7,
    a8,
    a9,
    background,
  ];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
