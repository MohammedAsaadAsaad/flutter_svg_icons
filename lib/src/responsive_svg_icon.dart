// ignore_for_file: non_constant_identifier_names, constant_identifier_names
part of flutter_svg_icons;

class _ResponsiveSvgIcon extends StatelessWidget {
  final ResponsiveSvgIconData icon;
  final bool responsiveColor;
  final Color? color;

  const _ResponsiveSvgIcon(this.icon,
      {Key? key, this.responsiveColor = true, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (c, cs) {
      var dim = min(cs.maxWidth, cs.maxHeight);

      String? path;

      for (var d in icon.assetPaths.keys) {
        if (dim <= d) {
          path = icon.assetPaths[d];
          break;
        }
      }

      return path == null
          ? const SizedBox()
          : SvgIcon(
              icon: SvgIconData(path,
                  reflectable: icon.reflectable, reflected: icon.reflected),
              size: dim,
              color: color,
              responsiveColor: responsiveColor,
            );
    });
  }
}
