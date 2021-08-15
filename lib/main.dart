import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wakelock/wakelock.dart';

import 'digital_clock.dart';
import 'stop_watch.dart';
import 'timer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
  runApp(
    King(),
  );
}

class King extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Wakelock.enable();
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light, canvasColor: Colors.white),
      darkTheme:
          ThemeData(brightness: Brightness.dark, canvasColor: Colors.black),
      home: Scaffold(
        body: PageView(
          children: [DigitalClock(), StopWatch(), TiMer()],
        ),
      ),
    );
  }
}
