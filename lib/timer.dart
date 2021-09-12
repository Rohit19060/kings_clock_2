import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TiMer extends StatefulWidget {
  const TiMer({Key? key}) : super(key: key);

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
      );
    }

    Timer.periodic(const Duration(seconds: 1), (Timer tempTimer) {
      if (mounted) {
        setState(() {
          if (_timer < 1 || _timerCheck == false) {
            Fluttertoast.showToast(
              msg: _timerCheck ? "Completed" : "Stopped",
            );
            tempTimer.cancel();
            _timerCheck = false;
            _display = "";
          } else if (_timer < 60) {
            _display = (_timer < 10 ? "0" : "").toString() + _timer.toString();
            _timer = _timer - 1;
          } else if (_timer < 3600) {
            int tempMinute = _timer ~/ 60;
            int tempSecond = _timer - (60 * tempMinute);
            _display = (tempMinute < 10 ? "0" : "").toString() +
                tempMinute.toString() +
                ":" +
                (tempSecond < 10 ? "0" : "").toString() +
                tempSecond.toString();
            _timer = _timer - 1;
          } else {
            int tempHour = _timer ~/ 3600;
            int tempTimer = _timer - (3600 * tempHour);
            int tempMinute = tempTimer ~/ 60;
            int tempSecond = tempTimer - (60 * tempMinute);
            _display = (tempHour < 10 ? "0" : "").toString() +
                tempHour.toString() +
                ":" +
                (tempMinute < 10 ? "0" : "").toString() +
                tempMinute.toString() +
                ":" +
                (tempSecond < 10 ? "0" : "").toString() +
                tempSecond.toString();
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
        _hours = 00;
        _mins = 00;
        _seconds = 00;
        _timer = 0;
        _display = "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(),
        _timerCheck
            ? Text(
                _display,
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              )
            : Form(
                key: _form,
                child: Table(
                  children: [
                    TableRow(children: [
                      Container(),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: _hours > 0 ? _hours.toString() : "Hours",
                          labelStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                          border: const OutlineInputBorder(),
                        ),
                        onSaved: (val) =>
                            _hours = int.tryParse(val ?? "0") ?? 0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: _mins > 0 ? _mins.toString() : "Minutes",
                          labelStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                          border: const OutlineInputBorder(),
                        ),
                        onSaved: (val) => _mins = int.tryParse(val ?? "0") ?? 0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText:
                              _seconds > 0 ? _seconds.toString() : "Seconds",
                          labelStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                          border: const OutlineInputBorder(),
                        ),
                        onSaved: (val) =>
                            _seconds = int.tryParse(val ?? "0") ?? 0,
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
              const EdgeInsets.all(15),
            ),
          ),
          child: _timerCheck
              ? Column(children: const [
                  Icon(
                    Icons.highlight_off,
                    size: 50,
                  ),
                  Text(
                    "Don't Swipe When\n Timer is Running",
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(fontSize: 20),
                  ),
                ])
              : const Icon(
                  Icons.play_circle_outline,
                  size: 50,
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
          children: const [
            Text(
              "<<  Stop Watch & Clock",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
