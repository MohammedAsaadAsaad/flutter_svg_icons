import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SVG Icons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'SVG Icons'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var responsiveIconData = ResponsiveSvgIconData({
      64: 'assets/archive_s.svg',
      128: 'assets/archive_m.svg',
      9999: 'assets/archive_l.svg'
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const Text(
            'As icon theme color:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SvgIcon(size: 60, icon: SvgIconData('assets/flutter_logo.svg')),
          const Text(
            'Pure color:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SvgIcon(
              size: 60,
              responsiveColor: false,
              icon: SvgIconData(
                'assets/flutter_logo.svg',
              )),
          const Text(
            'Customized color:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SvgIcon(
              responsiveColor: false,
              size: 60,
              color: Colors.red,
              icon: SvgIconData(
                'assets/flutter_logo.svg',
              )),
          const Text(
            'Responsive Icon:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgIcon(
                icon: responsiveIconData,
                size: 25,
              ),
              SvgIcon(
                icon: responsiveIconData,
                size: 70,
              ),
              SvgIcon(
                icon: responsiveIconData,
                size: 130,
              )
            ],
          )
        ],
      ),
    );
  }
}
