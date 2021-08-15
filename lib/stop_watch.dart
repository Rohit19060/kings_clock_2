import 'dart:async';

import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  @override
  _StopWatchState createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  String _display = "Stop Watch";
  var _coreWatch = Stopwatch();
  bool _isRunning = false;
  bool _isPaused = true;

  void start() {
    Timer(Duration(milliseconds: 1), running);
  }

  void running() {
    if (_coreWatch.isRunning) {
      start();
    }
    if (mounted) {
      setState(() {
        _display = _coreWatch.elapsed.inHours.toString().padLeft(2, "0") +
            ":" +
            (_coreWatch.elapsed.inMinutes % 60).toString().padLeft(2, "0") +
            ":" +
            (_coreWatch.elapsed.inSeconds % 60).toString().padLeft(2, "0") +
            ':' +
            (_coreWatch.elapsed.inMilliseconds % 1000).toString();
      });
    }
  }

  void _startStopWatch() {
    if (mounted) {
      setState(() {
        _isRunning = true;
        _isPaused = false;
      });
    }
    _coreWatch.start();
    start();
  }

  void _stopStopWatch() {
    if (mounted) {
      setState(() {
        _isRunning = true;
        _isPaused = true;
      });
    }
    _coreWatch.stop();
  }

  void _resetStopWatch() {
    if (mounted) {
      setState(() {
        _isRunning = false;
        _isPaused = true;
      });
    }
    _coreWatch.reset();
    _display = "Stop Watch";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Text(
          _display,
          style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
            ),
            overlayColor: MaterialStateProperty.all(
              Colors.black.withOpacity(0.2),
            ),
            elevation: MaterialStateProperty.all(8),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            ),
          ),
          child: Text(
            _isRunning
                ? _isPaused
                    ? "Reset"
                    : "Stop"
                : "Start",
            style: TextStyle(
                fontSize: 34.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          onPressed: _isRunning
              ? _isPaused
                  ? _resetStopWatch
                  : _stopStopWatch
              : _startStopWatch,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "<<  Clock",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            Text(
              "Timer  >>",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
