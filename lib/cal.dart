import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Center(
          child: Column(
            children: [
              Table(children: [
                TableRow(children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 14.5, bottom: 14.5, left: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      gradient: const LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [Colors.black12, Colors.black38]),
                    ),
                    child: const Text(
                      '2020',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      gradient: const LinearGradient(
                          colors: [Colors.black12, Colors.black38]),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 2),
                    child: const Text(
                      'Calender',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                  ),
                  Container(),
                  Container(),
                  Container(),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Jun(30)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.redAccent),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Sep(30)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.redAccent),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                        left: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Jan(31)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.redAccent),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Oct(31)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.redAccent),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'May(31)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.redAccent),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                        left: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Feb(29)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.redAccent),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Mar(31)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.redAccent),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(),
                  Container(),
                  Container(
                    decoration: const BoxDecoration(),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Dates',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.deepOrangeAccent),
                      ),
                    ),
                  ),
                  Container(),
                  Container(),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Dec(31)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.redAccent),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Apr(30)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.redAccent),
                      ),
                    ),
                  ),
                  Container(),
                  Container(),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Aug(31)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.redAccent),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Nov(30)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.redAccent),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Jul(31)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.redAccent),
                      ),
                    ),
                  ),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                ]),
                TableRow(children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '8',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '15',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '22',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '29',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Mon',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Tue',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                        left: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Wed',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Thurs',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Fri',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Sat',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        top: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Sun',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '9',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '16',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '23',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '30',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Tue',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Wed',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Thurs',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Fri',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Sat',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Sun',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Mon',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '10',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '17',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '24',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '31',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Wed',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Thurs',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Fri',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Sat',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Sun',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Mon',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Tue',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '4',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '11',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '18',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '25',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Thurs',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Fri',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Sat',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Sun',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Mon',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Tue',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Wed',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '5',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '12',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '19',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '26',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Fri',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Sat',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Sun',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Mon',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Tue',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Wed',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Thurs',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '6',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '13',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '20',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '27',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Sat',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Sun',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Mon',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Tue',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Wed',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Thurs',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Fri',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '7',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '14',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '21',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '28',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        '',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Sun',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Mon',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.5),
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Tue',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Wed',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Thurs',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                        right: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Fri',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.5),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    child: const Center(
                      child: Text(
                        'Sat',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                ]),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '<< Clock',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  Text(
                    'Stop Watch & Timer >>',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
}
