Flutter SVG Icons

`
A package to show svg asset files in icon widgets, supporting responsive svg icons.
`

## Features

* Show svg asset files in icon widgets.
* Support responsive icons.


## Getting started
In pubspec.yaml file, insert `flutter_svg_icons` as dependency:
```
  flutter_svg_icons: ^0.0.1
```



## Usage

Make sure that your svg files are added to your project assets.

* Svg Icon - by default, its color will be the same as icon theme color.
```dart
SvgIcon(icon: SvgIconData('assets/flutter_logo.svg'))
```

* Svg Icon - disable `responsiveColor` and set custom `color`.
```dart
SvgIcon(color: Colors.red, responsiveColor:false, icon: SvgIconData('assets/flutter_logo.svg'))
```

* Responsive Svg Icon
```dart
SvgIcon(icon: ResponsiceSvgIconData({
      64: 'assets/archive_s.svg',
      128: 'assets/archive_m.svg',
      9999: 'assets/archive_l.svg'
    }))
```