/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app;e_icon.svg
  String get appEIcon => 'assets/images/app;e_icon.svg';

  /// File path: assets/images/check_icon.svg
  String get checkIcon => 'assets/images/check_icon.svg';

  /// File path: assets/images/facebook_icon.svg
  String get facebookIcon => 'assets/images/facebook_icon.svg';

  /// File path: assets/images/fruit luncher icon.png
  AssetGenImage get fruitLuncherIcon =>
      const AssetGenImage('assets/images/fruit luncher icon.png');

  /// File path: assets/images/google_icon.svg
  String get googleIcon => 'assets/images/google_icon.svg';

  /// File path: assets/images/logo.svg
  String get logo => 'assets/images/logo.svg';

  /// File path: assets/images/page_view_item1_background_image.svg
  String get pageViewItem1BackgroundImage =>
      'assets/images/page_view_item1_background_image.svg';

  /// File path: assets/images/page_view_item1_image.svg
  String get pageViewItem1Image => 'assets/images/page_view_item1_image.svg';

  /// File path: assets/images/page_view_item2_background_image.svg
  String get pageViewItem2BackgroundImage =>
      'assets/images/page_view_item2_background_image.svg';

  /// File path: assets/images/page_view_item2_image.svg
  String get pageViewItem2Image => 'assets/images/page_view_item2_image.svg';

  /// File path: assets/images/planet.svg
  String get planet => 'assets/images/planet.svg';

  /// File path: assets/images/splash_bottom.svg
  String get splashBottom => 'assets/images/splash_bottom.svg';

  /// List of all assets
  List<dynamic> get values => [
        appEIcon,
        checkIcon,
        facebookIcon,
        fruitLuncherIcon,
        googleIcon,
        logo,
        pageViewItem1BackgroundImage,
        pageViewItem1Image,
        pageViewItem2BackgroundImage,
        pageViewItem2Image,
        planet,
        splashBottom
      ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
