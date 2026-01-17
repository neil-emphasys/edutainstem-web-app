/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart' as _lottie;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// Directory path: assets/icons/png
  $AssetsIconsPngGen get png => const $AssetsIconsPngGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/logo
  $AssetsImagesLogoGen get logo => const $AssetsImagesLogoGen();
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/error.json
  LottieGenImage get error => const LottieGenImage('assets/lottie/error.json');

  /// File path: assets/lottie/finished.json
  LottieGenImage get finished =>
      const LottieGenImage('assets/lottie/finished.json');

  /// File path: assets/lottie/info.json
  LottieGenImage get info => const LottieGenImage('assets/lottie/info.json');

  /// File path: assets/lottie/loading.json
  LottieGenImage get loading =>
      const LottieGenImage('assets/lottie/loading.json');

  /// File path: assets/lottie/question.json
  LottieGenImage get question =>
      const LottieGenImage('assets/lottie/question.json');

  /// File path: assets/lottie/success-sign-up.json
  LottieGenImage get successSignUp =>
      const LottieGenImage('assets/lottie/success-sign-up.json');

  /// File path: assets/lottie/success.json
  LottieGenImage get success =>
      const LottieGenImage('assets/lottie/success.json');

  /// List of all assets
  List<LottieGenImage> get values => [
    error,
    finished,
    info,
    loading,
    question,
    successSignUp,
    success,
  ];
}

class $AssetsIconsPngGen {
  const $AssetsIconsPngGen();

  /// File path: assets/icons/png/check-mark.png
  AssetGenImage get checkMark =>
      const AssetGenImage('assets/icons/png/check-mark.png');

  /// File path: assets/icons/png/go-back.png
  AssetGenImage get goBack =>
      const AssetGenImage('assets/icons/png/go-back.png');

  /// File path: assets/icons/png/google.png
  AssetGenImage get google =>
      const AssetGenImage('assets/icons/png/google.png');

  /// File path: assets/icons/png/logout.png
  AssetGenImage get logout =>
      const AssetGenImage('assets/icons/png/logout.png');

  /// File path: assets/icons/png/quote.png
  AssetGenImage get quote => const AssetGenImage('assets/icons/png/quote.png');

  /// File path: assets/icons/png/side-menu-dashboard.png
  AssetGenImage get sideMenuDashboard =>
      const AssetGenImage('assets/icons/png/side-menu-dashboard.png');

  /// File path: assets/icons/png/side-menu-lesson.png
  AssetGenImage get sideMenuLesson =>
      const AssetGenImage('assets/icons/png/side-menu-lesson.png');

  /// File path: assets/icons/png/side-menu-profile.png
  AssetGenImage get sideMenuProfile =>
      const AssetGenImage('assets/icons/png/side-menu-profile.png');

  /// File path: assets/icons/png/side-menu-room.png
  AssetGenImage get sideMenuRoom =>
      const AssetGenImage('assets/icons/png/side-menu-room.png');

  /// File path: assets/icons/png/side-menu-settings.png
  AssetGenImage get sideMenuSettings =>
      const AssetGenImage('assets/icons/png/side-menu-settings.png');

  /// File path: assets/icons/png/swap.png
  AssetGenImage get swap => const AssetGenImage('assets/icons/png/swap.png');

  /// File path: assets/icons/png/table-delete.png
  AssetGenImage get tableDelete =>
      const AssetGenImage('assets/icons/png/table-delete.png');

  /// File path: assets/icons/png/table-edit.png
  AssetGenImage get tableEdit =>
      const AssetGenImage('assets/icons/png/table-edit.png');

  /// File path: assets/icons/png/table-view.png
  AssetGenImage get tableView =>
      const AssetGenImage('assets/icons/png/table-view.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    checkMark,
    goBack,
    google,
    logout,
    quote,
    sideMenuDashboard,
    sideMenuLesson,
    sideMenuProfile,
    sideMenuRoom,
    sideMenuSettings,
    swap,
    tableDelete,
    tableEdit,
    tableView,
  ];
}

class $AssetsImagesLogoGen {
  const $AssetsImagesLogoGen();

  /// File path: assets/images/logo/logo-2.png
  AssetGenImage get logo2 =>
      const AssetGenImage('assets/images/logo/logo-2.png');

  /// File path: assets/images/logo/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [logo2, logo];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class LottieGenImage {
  const LottieGenImage(this._assetName, {this.flavors = const {}});

  final String _assetName;
  final Set<String> flavors;

  _lottie.LottieBuilder lottie({
    Animation<double>? controller,
    bool? animate,
    _lottie.FrameRate? frameRate,
    bool? repeat,
    bool? reverse,
    _lottie.LottieDelegates? delegates,
    _lottie.LottieOptions? options,
    void Function(_lottie.LottieComposition)? onLoaded,
    _lottie.LottieImageProviderFactory? imageProviderFactory,
    Key? key,
    AssetBundle? bundle,
    Widget Function(BuildContext, Widget, _lottie.LottieComposition?)?
    frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    String? package,
    bool? addRepaintBoundary,
    FilterQuality? filterQuality,
    void Function(String)? onWarning,
    _lottie.LottieDecoder? decoder,
    _lottie.RenderCache? renderCache,
    bool? backgroundLoading,
  }) {
    return _lottie.Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
      decoder: decoder,
      renderCache: renderCache,
      backgroundLoading: backgroundLoading,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
