import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TiMer extends StatefulWidget {
  const TiMer({Key? key}) : super(key: key);

  @override
  State<TiMer> createState() => _TiMerState();
}

class _TiMerState extends State<TiMer> {
  final _form = GlobalKey<FormState>();
  int _hours = 00;
  int _mins = 00;
  int _seconds = 00;
  int _timer = 0;
  String _display = '';
  bool _timerCheck = false;

  Future<bool?> start() async {
    if (mounted) {
      setState(() {
        _timerCheck = true;
      });
    }
    _timer = (_hours * 3600) + (_mins * 60) + _seconds;
    if (_timer < 1 || _timerCheck == false) {
      _timerCheck = false;
      _display = '';
      return Fluttertoast.showToast(
        msg: 'Please Insert a value',
      );
    }

    Timer.periodic(const Duration(seconds: 1), (tempTimer) {
      if (mounted) {
        setState(() {
          if (_timer < 1 || _timerCheck == false) {
            Fluttertoast.showToast(
              msg: _timerCheck ? 'Completed' : 'Stopped',
            );
            tempTimer.cancel();
            _timerCheck = false;
            _display = '';
          } else if (_timer < 60) {
            _display = (_timer < 10 ? '0' : '') + _timer.toString();
            _timer = _timer - 1;
          } else if (_timer < 3600) {
            final tempMinute = _timer ~/ 60;
            final tempSecond = _timer - (60 * tempMinute);
            _display =
                "${tempMinute < 10 ? "0" : ""}$tempMinute:${tempSecond < 10 ? "0" : ""}$tempSecond";
            _timer = _timer - 1;
          } else {
            final tempHour = _timer ~/ 3600;
            final tempTimer = _timer - (3600 * tempHour);
            final tempMinute = tempTimer ~/ 60;
            final tempSecond = tempTimer - (60 * tempMinute);
            _display =
                "${tempHour < 10 ? "0" : ""}$tempHour:${tempMinute < 10 ? "0" : ""}$tempMinute:${tempSecond < 10 ? "0" : ""}$tempSecond";
            _timer = _timer - 1;
          }
        });
      }
    });
    return null;
  }

  void stop() {
    if (mounted) {
      setState(() {
        _timerCheck = false;
        _hours = 00;
        _mins = 00;
        _seconds = 00;
        _timer = 0;
        _display = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          if (_timerCheck)
            Text(
              _display,
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            )
          else
            Form(
              key: _form,
              child: Table(
                children: [
                  TableRow(children: [
                    Container(),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: _hours > 0 ? _hours.toString() : 'Hours',
                        labelStyle:
                            const TextStyle(fontWeight: FontWeight.bold),
                        border: const OutlineInputBorder(),
                      ),
                      onSaved: (val) => _hours = int.tryParse(val ?? '0') ?? 0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: _mins > 0 ? _mins.toString() : 'Minutes',
                        labelStyle:
                            const TextStyle(fontWeight: FontWeight.bold),
                        border: const OutlineInputBorder(),
                      ),
                      onSaved: (val) => _mins = int.tryParse(val ?? '0') ?? 0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText:
                            _seconds > 0 ? _seconds.toString() : 'Seconds',
                        labelStyle:
                            const TextStyle(fontWeight: FontWeight.bold),
                        border: const OutlineInputBorder(),
                      ),
                      onSaved: (val) =>
                          _seconds = int.tryParse(val ?? '0') ?? 0,
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
            onPressed: _timerCheck
                ? stop
                : () {
                    if (_form.currentState!.validate()) {
                      _form.currentState!.save();
                      start();
                    }
                  },
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
          ),
          Row(
            children: const [
              Text(
                '<<  Stop Watch & Clock',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ],
      );
}
