/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAnimatedGen {
  const $AssetsAnimatedGen();

  /// File path: assets/animated/anim_loading.json
  String get animLoading => 'assets/animated/anim_loading.json';

  /// List of all assets
  List<String> get values => [animLoading];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_calendar.svg
  String get icCalendar => 'assets/icons/ic_calendar.svg';

  /// File path: assets/icons/ic_flag_english.svg
  String get icFlagEnglish => 'assets/icons/ic_flag_english.svg';

  /// File path: assets/icons/ic_flag_vietnam.svg
  String get icFlagVietnam => 'assets/icons/ic_flag_vietnam.svg';

  /// File path: assets/icons/ic_home.svg
  String get icHome => 'assets/icons/ic_home.svg';

  /// File path: assets/icons/ic_more.svg
  String get icMore => 'assets/icons/ic_more.svg';

  /// File path: assets/icons/ic_notification.svg
  String get icNotification => 'assets/icons/ic_notification.svg';

  /// File path: assets/icons/ic_search.svg
  String get icSearch => 'assets/icons/ic_search.svg';

  /// File path: assets/icons/ic_tick.svg
  String get icTick => 'assets/icons/ic_tick.svg';

  /// List of all assets
  List<String> get values => [
        icCalendar,
        icFlagEnglish,
        icFlagVietnam,
        icHome,
        icMore,
        icNotification,
        icSearch,
        icTick
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/img_logo_app.jpg
  AssetGenImage get imgLogoApp =>
      const AssetGenImage('assets/images/img_logo_app.jpg');

  /// File path: assets/images/img_splash.png
  AssetGenImage get imgSplash =>
      const AssetGenImage('assets/images/img_splash.png');

  /// File path: assets/images/img_welcome.png
  AssetGenImage get imgWelcome =>
      const AssetGenImage('assets/images/img_welcome.png');

  /// List of all assets
  List<AssetGenImage> get values => [imgLogoApp, imgSplash, imgWelcome];
}

class Assets {
  Assets._();

  static const $AssetsAnimatedGen animated = $AssetsAnimatedGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
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
    FilterQuality filterQuality = FilterQuality.low,
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
