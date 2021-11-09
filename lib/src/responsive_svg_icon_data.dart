part of svg_icons;

/// Represents a svg icon data, with several asset files to shown
/// according to the allowed size.
class ResponsiveSvgIconData extends SvgIconData {
  /// Represesnts the multiple variations.
  /// ```dart
  /// assetPaths = {
  ///  64: 'assets/archive_s.svg',
  ///  128: 'assets/archive_m.svg',
  ///  9999: 'assets/archive_l.svg'
  /// }
  /// ```
  final Map<double, String> assetPaths;

  /// Create an instance of [ResponsiveSvgIconData]
  const ResponsiveSvgIconData(this.assetPaths,
      {String? package, bool? reflectable, bool? reflected})
      : super('',
            package: package, reflectable: reflectable, reflected: reflected);

  @override

  /// Create another instance of [ResponsiveSvgIconData] with specified configurations.
  ResponsiveSvgIconData copyWith({bool? reflectable, bool? reflected}) =>
      ResponsiveSvgIconData(assetPaths,
          package: package,
          reflectable: reflectable ?? this.reflectable,
          reflected: reflected ?? this.reflected);
}
