import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TiMer extends StatefulWidget {
  @override
  _TiMerState createState() => _TiMerState();
}

class _TiMerState extends State<TiMer> {
  final _form = GlobalKey<FormState>();
  int _hours = 00;
  int _mins = 00;
  int _seconds = 00;
  int _timer = 0;
  String _display = "";
  bool _timerCheck = false;

  Future start() async {
    if (mounted) {
      setState(() {
        _timerCheck = true;
      });
    }
    _timer = ((_hours * 3600) + (_mins * 60) + _seconds);
    if (_timer < 1 || _timerCheck == false) {
      _timerCheck = false;
      _display = "";
      return Fluttertoast.showToast(
          msg: "Please Insert a value",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0);
    }

    Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (mounted) {
        setState(() {
          if (_timer < 1 || _timerCheck == false) {
            Fluttertoast.showToast(
                msg: _timerCheck ? "Completed" : "Stopped",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.black,
                textColor: Colors.white,
                fontSize: 16.0);
            t.cancel();
            _timerCheck = false;
            _display = "";
          } else if (_timer < 60) {
            _display = (_timer < 10 ? "0" : "").toString() + _timer.toString();
            _timer = _timer - 1;
          } else if (_timer < 3600) {
            int m = _timer ~/ 60;
            int s = _timer - (60 * m);
            _display = (m < 10 ? "0" : "").toString() +
                m.toString() +
                ":" +
                (s < 10 ? "0" : "").toString() +
                s.toString();
            _timer = _timer - 1;
          } else {
            int h = _timer ~/ 3600;
            int t = _timer - (3600 * h);
            int m = t ~/ 60;
            int s = t - (60 * m);
            _display = (h < 10 ? "0" : "").toString() +
                h.toString() +
                ":" +
                (m < 10 ? "0" : "").toString() +
                m.toString() +
                ":" +
                (s < 10 ? "0" : "").toString() +
                s.toString();
            _timer = _timer - 1;
          }
        });
      }
    });
  }

  void stop() {
    if (mounted) {
      setState(() {
        _timerCheck = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(),
        _timerCheck
            ? Text(
                _display,
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            : Container(
                child: Text(
                  "Timer",
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                ),
              ),
        Form(
          key: _form,
          child: Table(
            children: [
              TableRow(children: [
                Container(),
                TextFormField(
                  initialValue: "0",
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: _hours > 0 ? _hours.toString() : "Hours",
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (val) => _hours = int.tryParse(val ?? "0") ?? 0,
                ),
                TextFormField(
                  initialValue: "0",
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: _mins > 0 ? _mins.toString() : "Minutes",
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (val) => _mins = int.tryParse(val ?? "0") ?? 0,
                ),
                TextFormField(
                  initialValue: "0",
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: _seconds > 0 ? _seconds.toString() : "Seconds",
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (val) => _seconds = int.tryParse(val ?? "0") ?? 0,
                ),
                Container()
              ]),
            ],
          ),
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
              EdgeInsets.all(15),
            ),
          ),
          child: _timerCheck
              ? Column(children: [
                  Icon(
                    Icons.highlight_off,
                    size: 100,
                  ),
                  Text(
                    "Don't Swipe When\n Timer is Running",
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(fontSize: 26),
                  ),
                ])
              : Icon(
                  Icons.play_circle_outline,
                  size: 100,
                ),
          onPressed: _timerCheck
              ? stop
              : () {
                  if (_form.currentState!.validate()) {
                    _form.currentState!.save();
                    start();
                  }
                },
        ),
        Row(
          children: [
            Text(
              "<<  Stop Watch & Clock",
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
