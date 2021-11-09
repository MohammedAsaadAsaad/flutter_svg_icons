part of svg_icons;

/// Represents the svg icon data to be shown in [SvgIcon] widget
class SvgIconData {
  /// The asset package
  final String? package;

  /// The asset prefix
  final String? prefix;

  /// The asset file name, (without .svg)
  final String name;

  /// Weather the icon is following the build context text direction
  final bool? reflectable;

  /// Weather to reflect this svg icon
  final bool? reflected;

  /// Create an instance of [SvgIconData]
  const SvgIconData(this.name,
      {this.package, this.prefix, this.reflectable, this.reflected});

  /// Get the full path of this icon svg file
  String get fullPath => prefix == null ? name : '$prefix/$name';

  /// Create another instance of [SvgIconData] with specified configurations.
  SvgIconData copyWith({bool? reflectable, bool? reflected}) =>
      SvgIconData(name,
          prefix: prefix,
          reflectable: reflectable ?? this.reflectable,
          reflected: reflected ?? this.reflected);
}
