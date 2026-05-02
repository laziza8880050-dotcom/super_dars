// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/back.svg
  String get back => 'assets/icons/back.svg';

  /// File path: assets/icons/bookmark (1).svg
  String get bookmark1 => 'assets/icons/bookmark (1).svg';

  /// File path: assets/icons/eye.png
  AssetGenImage get eye => const AssetGenImage('assets/icons/eye.png');

  /// File path: assets/icons/eye1.png
  AssetGenImage get eye1 => const AssetGenImage('assets/icons/eye1.png');

  /// File path: assets/icons/home.svg
  String get home => 'assets/icons/home.svg';

  /// File path: assets/icons/izbr.svg
  String get izbr => 'assets/icons/izbr.svg';

  /// File path: assets/icons/mini_logo.svg
  String get miniLogo => 'assets/icons/mini_logo.svg';

  /// File path: assets/icons/search_unselected.svg
  String get searchUnselected => 'assets/icons/search_unselected.svg';

  /// File path: assets/icons/settings.svg
  String get settings => 'assets/icons/settings.svg';

  /// File path: assets/icons/share.svg
  String get share => 'assets/icons/share.svg';

  /// File path: assets/icons/sms.svg
  String get sms => 'assets/icons/sms.svg';

  /// File path: assets/icons/smss.svg
  String get smss => 'assets/icons/smss.svg';

  /// List of all assets
  List<dynamic> get values => [
    back,
    bookmark1,
    eye,
    eye1,
    home,
    izbr,
    miniLogo,
    searchUnselected,
    settings,
    share,
    sms,
    smss,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/&.png
  AssetGenImage get a => const AssetGenImage('assets/images/&.png');

  /// File path: assets/images/about.png
  AssetGenImage get about => const AssetGenImage('assets/images/about.png');

  /// File path: assets/images/account.png
  AssetGenImage get account => const AssetGenImage('assets/images/account.png');

  /// File path: assets/images/log.png
  AssetGenImage get log => const AssetGenImage('assets/images/log.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/password.png
  AssetGenImage get password =>
      const AssetGenImage('assets/images/password.png');

  /// File path: assets/images/push.png
  AssetGenImage get push => const AssetGenImage('assets/images/push.png');

  /// File path: assets/images/vse_iconki.png
  AssetGenImage get vseIconki =>
      const AssetGenImage('assets/images/vse_iconki.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    a,
    about,
    account,
    log,
    logo,
    password,
    push,
    vseIconki,
  ];
}

class $AssetsLottiesGen {
  const $AssetsLottiesGen();

  /// File path: assets/lotties/Welcome.json
  String get welcome => 'assets/lotties/Welcome.json';

  /// File path: assets/lotties/no data found.json
  String get noDataFound => 'assets/lotties/no data found.json';

  /// List of all assets
  List<String> get values => [welcome, noDataFound];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottiesGen lotties = $AssetsLottiesGen();
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
