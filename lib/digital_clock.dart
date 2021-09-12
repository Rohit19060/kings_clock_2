import 'dart:async';

import 'package:flutter/material.dart';

class DigitalClock extends StatefulWidget {
  const DigitalClock({Key? key}) : super(key: key);

  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (Timer tempTimer) {
      if (mounted) {
        setState(() {
          _hour0();
          _hour1();
          _minute0();
          _minute1();
          _sec();
          _date();
        });
      }
    });
    super.initState();
  }

  _hour0() {
    var hour = DateTime.now().hour.toInt() / 10;
    return "${hour.toInt()}";
  }

  _hour1() {
    var hour = DateTime.now().hour.toInt() % 10;
    return "$hour";
  }

  _minute0() {
    var min = DateTime.now().minute.toInt() / 10;
    return "${min.toInt()}";
  }

  _minute1() {
    var min = DateTime.now().minute.toInt() % 10;
    return "$min";
  }

  _sec() {
    var sec1 = DateTime.now().second.toInt() / 10;
    var sec0 = DateTime.now().second.toInt() % 10;
    return "${sec1.toInt()}$sec0";
  }

  _date() {
    var day = DateTime.now().day.toInt();
    var month = DateTime.now().month.toInt();
    var year = DateTime.now().year.toInt();
    return "$day/$month/$year";
  }

  Widget handle(d, w, h) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
      width: w,
      height: h,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20.0,
          )
        ],
        borderRadius: BorderRadius.circular(50.0),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.2),
              Colors.white.withOpacity(0.6),
              Colors.white,
              Colors.white.withOpacity(0.6),
              Colors.black.withOpacity(0.2),
            ]),
      ),
      child: FittedBox(
        child: Center(
          child: Text(
            d,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        const Text(
          "Digital Clock",
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        Text(
          _date(),
          style: const TextStyle(fontSize: 24),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            handle(_hour0(), size.width * 0.1, 185.0),
            handle(_hour1(), size.width * 0.1, 185.0),
            handle(_sec(), size.width * 0.03, 40.0),
            handle(_minute0(), size.width * 0.1, 185.0),
            handle(_minute1(), size.width * 0.1, 185.0),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text(
              "Stop Watch & Timer >>",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        )
      ],
    );
  }
}
