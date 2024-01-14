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

  /// File path: assets/images/avatar_1.svg
  String get avatar1 => 'assets/images/avatar_1.svg';

  /// File path: assets/images/avatar_2.svg
  String get avatar2 => 'assets/images/avatar_2.svg';

  /// File path: assets/images/avatar_3.svg
  String get avatar3 => 'assets/images/avatar_3.svg';

  /// File path: assets/images/balance.svg
  String get balance => 'assets/images/balance.svg';

  /// File path: assets/images/card_background.png
  AssetGenImage get cardBackground =>
      const AssetGenImage('assets/images/card_background.png');

  /// File path: assets/images/dashboard.svg
  String get dashboard => 'assets/images/dashboard.svg';

  /// File path: assets/images/expenses.svg
  String get expenses => 'assets/images/expenses.svg';

  /// File path: assets/images/gallery.svg
  String get gallery => 'assets/images/gallery.svg';

  /// File path: assets/images/income.svg
  String get income => 'assets/images/income.svg';

  /// File path: assets/images/logout.svg
  String get logout => 'assets/images/logout.svg';

  /// File path: assets/images/my_investments.svg
  String get myInvestments => 'assets/images/my_investments.svg';

  /// File path: assets/images/my_transaction.svg
  String get myTransaction => 'assets/images/my_transaction.svg';

  /// File path: assets/images/setting.svg
  String get setting => 'assets/images/setting.svg';

  /// File path: assets/images/statistics.svg
  String get statistics => 'assets/images/statistics.svg';

  /// File path: assets/images/wallet_account.svg
  String get walletAccount => 'assets/images/wallet_account.svg';

  /// List of all assets
  List<dynamic> get values => [
        avatar1,
        avatar2,
        avatar3,
        balance,
        cardBackground,
        dashboard,
        expenses,
        gallery,
        income,
        logout,
        myInvestments,
        myTransaction,
        setting,
        statistics,
        walletAccount
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
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
