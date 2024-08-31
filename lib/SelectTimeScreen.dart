import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeect_1/SplashPage.dart';

class TimeScreen extends StatefulWidget {
  const TimeScreen({Key? key});

  @override
  State<TimeScreen> createState() => _TimeScreenState();
}

class _TimeScreenState extends State<TimeScreen> {
  Widget buildTimeContainer(String time, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_selectedIndex == index) {
            _selectedIndex = null;
          } else {
            _selectedIndex = index;
          }
        });
      },
      child: Container(
        height: 40,
        width: 105,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: _selectedIndex == index
              ? Color.fromRGBO(28, 42, 58, 1)
              : Color.fromRGBO(249, 250, 251, 1),
        ),
        child: Center(
          child: Text(
            time,
            style: TextStyle(
              color: _selectedIndex == index
                  ? Color.fromRGBO(255, 255, 255, 1)
                  : Color.fromRGBO(107, 114, 128, 1),
              fontFamily: 'Inter',
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  int? _selectedIndex;
  String selectedDate = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Book Appointment',
            style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(55, 65, 81, 1)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [
                  Text('Select Date',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(28, 42, 58, 1))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 240,
                width: 350,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(249, 250, 251, 1),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 6,
                          spreadRadius: 0,
                          color: Color.fromRGBO(0, 0, 0, 0.05)),
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 15,
                          spreadRadius: -3,
                          color: Color.fromRGBO(0, 0, 0, 0.1)),
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'June 2023',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(17, 25, 40, 1)),
                          ),
                          Row(
                            children: [
                              Icon(Icons.arrow_left,
                                  size: 25,
                                  color: Color.fromRGBO(156, 163, 175, 1)),
                              Icon(Icons.arrow_right,
                                  size: 25,
                                  color: Color.fromRGBO(28, 42, 58, 1))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (var day in [
                            'Sun',
                            'Mon',
                            'Tue',
                            'Wed',
                            'Thu',
                            'Fri',
                            'Sat'
                          ])
                            Container(
                              width: 45,
                              height: 34,
                              alignment: Alignment.center,
                              child: Text(
                                day,
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(75, 85, 99, 1),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (var date in [
                            '01',
                            '02',
                            '03',
                            '04',
                            '05',
                            '06',
                            '07'
                          ])
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedDate = date.trim();
                                });
                              },
                              child: Container(
                                width: 36,
                                height: 34,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: (date.trim() == selectedDate)
                                        ? Color.fromRGBO(28, 42, 58, 1)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  date,
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: (date.trim() == selectedDate)
                                        ? Colors.white
                                        : ((date.trim() == '01' ||
                                                date.trim() == '07')
                                            ? Color.fromRGBO(209, 213, 219, 1)
                                            : Color.fromRGBO(107, 114, 128, 1)),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (var date in [
                            '08',
                            '09',
                            '10',
                            '11',
                            '12',
                            '13',
                            '14'
                          ])
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedDate = date.trim();
                                });
                              },
                              child: Container(
                                width: 36,
                                height: 34,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: (date.trim() == selectedDate)
                                        ? Color.fromRGBO(28, 42, 58, 1)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  date,
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: (date.trim() == selectedDate)
                                        ? Colors.white
                                        : ((date.trim() == '08' ||
                                                date.trim() == '14')
                                            ? Color.fromRGBO(209, 213, 219, 1)
                                            : Color.fromRGBO(107, 114, 128, 1)),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (var date in [
                            '15',
                            '16',
                            '17',
                            '18',
                            '19',
                            '20',
                            '21'
                          ])
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedDate = date.trim();
                                });
                              },
                              child: Container(
                                width: 36,
                                height: 34,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: (date.trim() == selectedDate)
                                        ? Color.fromRGBO(28, 42, 58, 1)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  date,
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: (date.trim() == selectedDate)
                                        ? Colors.white
                                        : ((date.trim() == '15' ||
                                                date.trim() == '21')
                                            ? Color.fromRGBO(209, 213, 219, 1)
                                            : Color.fromRGBO(107, 114, 128, 1)),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (var date in [
                            '22',
                            '23',
                            '24',
                            '25',
                            '26',
                            '27',
                            '28'
                          ])
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedDate = date.trim();
                                });
                              },
                              child: Container(
                                width: 36,
                                height: 34,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: (date.trim() == selectedDate)
                                        ? Color.fromRGBO(28, 42, 58, 1)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  date,
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: (date.trim() == selectedDate)
                                        ? Colors.white
                                        : ((date.trim() == '22' ||
                                                date.trim() == '28')
                                            ? Color.fromRGBO(209, 213, 219, 1)
                                            : Color.fromRGBO(107, 114, 128, 1)),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (var date in [
                            '29',
                            '30',
                            ' 1',
                            ' 2',
                            ' 3',
                            ' 4',
                            ' 5'
                          ])
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedDate = date.trim();
                                });
                              },
                              child: Container(
                                width: 36,
                                height: 34,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: (date.trim() == selectedDate)
                                        ? Color.fromRGBO(28, 42, 58, 1)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  date,
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: (date.trim() == selectedDate)
                                        ? Colors.white
                                        : ((date.trim() == '29' ||
                                                date.trim() == '5')
                                            ? Color.fromRGBO(209, 213, 219, 1)
                                            : Color.fromRGBO(107, 114, 128, 1)),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text('Select Hour',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(28, 42, 58, 1))),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildTimeContainer('09.00 AM', 0),
                    SizedBox(width: 10),
                    buildTimeContainer('09.30 AM', 1),
                    SizedBox(width: 10),
                    buildTimeContainer('10.00 AM', 2),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTimeContainer('10.30 AM', 3),
                SizedBox(width: 10),
                buildTimeContainer('11.00 AM', 4),
                SizedBox(width: 10),
                buildTimeContainer('11.30 AM', 5),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTimeContainer('3.00 PM', 6),
                SizedBox(width: 10),
                buildTimeContainer('3.30 PM', 7),
                SizedBox(width: 10),
                buildTimeContainer('4.00 PM', 8),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTimeContainer('4.30 PM', 9),
                SizedBox(width: 10),
                buildTimeContainer('5.00 PM', 10),
                SizedBox(width: 10),
                buildTimeContainer('5.30 PM', 11),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SplashScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 48,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(28, 42, 58, 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'Confirm',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
