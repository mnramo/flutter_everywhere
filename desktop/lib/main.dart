import 'dart:io';

import 'package:desktop/src/index.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

void main() {
  _setTargetPlatformForDesktop();
  runApp(new MyApp());
}

void _setTargetPlatformForDesktop({TargetPlatform target}) {
  TargetPlatform targetPlatform;
  if (target != null) {
    targetPlatform = target;
  } else if (Platform.isMacOS) {
    targetPlatform = TargetPlatform.iOS;
  } else if (Platform.isLinux || Platform.isWindows) {
    targetPlatform = TargetPlatform.android;
  }
  if (targetPlatform != null) {
    debugDefaultTargetPlatformOverride = targetPlatform;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.title,
      theme: Themes.light,
      darkTheme: Themes.dark,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
