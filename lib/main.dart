import 'package:flutter/material.dart';
import 'package:responsive_flutter_design/responsive_layout/responsive_layout.dart';
import 'responsive_layout/mobile_scaffold.dart';
import 'responsive_layout/tablet_scaffold.dart';
import 'responsive_layout/desktop_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
