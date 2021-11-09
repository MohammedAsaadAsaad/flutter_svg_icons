part of flutter_svg_icons;

/// An icon widget shows asset svg file.
class SvgIcon extends StatelessWidget {
  /// The svg icon data of this widget
  final SvgIconData icon;

  /// Weather the color of the icon following the icon theme color
  final bool responsiveColor;

  /// The color of this icon, [responsiveColor] must be false
  final Color? color;

  /// The size of this icon
  final double? size;

  /// Create an instance of [SvgIcon]
  const SvgIcon(
      {Key? key,
      required this.icon,
      this.responsiveColor = true,
      this.size,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (icon is ResponsiveSvgIconData) {
      {
        Widget result = _ResponsiveSvgIcon(icon as ResponsiveSvgIconData,
            responsiveColor: responsiveColor, color: this.color);
        var size = this.size ?? IconTheme.of(context).size;
        if (size != null) {
          result = SizedBox(
            width: size,
            height: size,
            child: result,
          );
        }
        return result;
      }
    }
    var color = !responsiveColor ? this.color : IconTheme.of(context).color;
    Widget result = SvgPicture.asset(
      icon.fullPath,
      package: icon.package,
      color: color,
      width: size,
      height: size,
    );

    bool mirrored = false;

    if (icon.reflectable == true) {
      if (icon.reflected != true) {
        mirrored = (Directionality.of(context) == TextDirection.rtl);
      } else {
        mirrored = (Directionality.of(context) == TextDirection.ltr);
      }
    } else {
      mirrored = (icon.reflected == true);
    }

    if (mirrored) {
      result = Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: result,
      );
    }

    return result;
  }
}
