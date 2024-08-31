import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeect_1/DoctorProfile.dart';
import 'package:projeect_1/FindDoctors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    double ScreenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Text('Location',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(107, 114, 128, 1),
                              )),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color.fromRGBO(28, 42, 58, 1),
                            ),
                            Text('Seattle, USA',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(55, 65, 81, 1))),
                            Icon(Icons.arrow_drop_down_outlined)
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(243, 244, 246, 1),
                            borderRadius: BorderRadius.circular(72),
                            border:
                                Border.all(width: 0.3, color: Colors.white)),
                        child: Stack(
                          children: [
                            Center(
                              child: Icon(
                                CupertinoIcons.bell_fill,
                                size: 20,
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                width: 5,
                                height: 5,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FindDoctor()));
                  },
                  child: Container(
                    height: ScreenHeight * 0.05,
                    width: ScreenWidth * 0.95,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(243, 244, 246, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          CupertinoIcons.search,
                          size: 25,
                          color: Color.fromRGBO(156, 163, 175, 1),
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Search dentist...',
                        style: TextStyle(
                            color: Color.fromRGBO(156, 163, 175, 1),
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      )
                    ]),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 150,
                    width: 380,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Stack(
                      alignment: Alignment.center,
                      textDirection: TextDirection.ltr,
                      children: [
                        Positioned(
                          left: 0,
                          child: Image(
                            image: AssetImage('images/GirlDr.png'),
                          ),
                        ),
                        Positioned(
                            right: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image(
                                  image: AssetImage('images/Michael1.png')),
                            )),
                        Positioned(
                          left: 10,
                          top: 30,
                          child: Container(
                            child: Text(
                              'Looking for\nSpecialist Dentist?',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          top: 90,
                          child: Container(
                            child: Text(
                              'Schedule an appointment with\nour top doctors.',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nearby Medical Centers',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(28, 42, 58, 1),
                      ),
                    ),
                    Text(
                      'See All',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(107, 114, 128, 1)),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: 295,
                          width: 232,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 1,
                                    spreadRadius: 0,
                                    color: Color.fromRGBO(0, 0, 0, 0.1)),
                                BoxShadow(
                                    offset: Offset(1, 1),
                                    blurRadius: 2,
                                    spreadRadius: 0,
                                    color: Color.fromRGBO(0, 0, 0, 0.09)),
                                BoxShadow(
                                  offset: Offset(3, 3),
                                  blurRadius: 2,
                                  spreadRadius: 0,
                                  color: Color.fromRGBO(0, 0, 0, 0.05),
                                ),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                child: Container(
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Image(
                                          width: ScreenWidth * 1,
                                          image: AssetImage('images/Home.jpg'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 10),
                                          child: Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      31, 42, 55, 0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          52)),
                                              child: Icon(CupertinoIcons.heart,
                                                  color: Colors.white)),
                                        ),
                                      ]),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      'Smile & Shine Clinic',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromRGBO(107, 114, 128, 1)),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Color.fromRGBO(107, 114, 128, 1),
                                    ),
                                    Text('123 Oak Street, CA 98765',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromRGBO(55, 65, 81, 1))),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(children: [
                                  Text('5.0',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(
                                              107, 114, 128, 1))),
                                  SizedBox(width: 5),
                                  Icon(CupertinoIcons.star_fill,
                                      size: 15,
                                      color: Color.fromRGBO(254, 176, 82, 1)),
                                  Icon(CupertinoIcons.star_fill,
                                      size: 15,
                                      color: Color.fromRGBO(254, 176, 82, 1)),
                                  Icon(CupertinoIcons.star_fill,
                                      size: 15,
                                      color: Color.fromRGBO(254, 176, 82, 1)),
                                  Icon(CupertinoIcons.star_fill,
                                      size: 15,
                                      color: Color.fromRGBO(254, 176, 82, 1)),
                                  Icon(CupertinoIcons.star_fill,
                                      size: 15,
                                      color: Color.fromRGBO(254, 176, 82, 1)),
                                  SizedBox(width: 5),
                                  Text('(58 Reviews)',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(
                                              107, 114, 128, 1))),
                                ]),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Divider(
                                color: Color.fromRGBO(229, 231, 235, 1),
                                thickness: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image(
                                            height: 14,
                                            width: 14,
                                            image: AssetImage(
                                                'images/routing.png')),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('2.5 km/40min',
                                            style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromRGBO(
                                                    107, 114, 128, 1))),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                            height: 14,
                                            width: 14,
                                            image: AssetImage(
                                                'images/hospital.png')),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('Hospital',
                                            style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromRGBO(
                                                    107, 114, 128, 1))),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 295,
                          width: 232,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 1,
                                    spreadRadius: 0,
                                    color: Color.fromRGBO(0, 0, 0, 0.1)),
                                BoxShadow(
                                    offset: Offset(1, 1),
                                    blurRadius: 2,
                                    spreadRadius: 0,
                                    color: Color.fromRGBO(0, 0, 0, 0.09)),
                                BoxShadow(
                                  offset: Offset(3, 3),
                                  blurRadius: 2,
                                  spreadRadius: 0,
                                  color: Color.fromRGBO(0, 0, 0, 0.05),
                                ),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                child: Container(
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Image(
                                            width: ScreenWidth * 1,
                                            image:
                                                AssetImage('images/Home2.jpg')),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 10),
                                          child: Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      31, 42, 55, 0.3),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          52)),
                                              child: Icon(CupertinoIcons.heart,
                                                  color: Colors.white)),
                                        ),
                                      ]),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      'Golden Dentistry Center',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromRGBO(107, 114, 128, 1)),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Color.fromRGBO(107, 114, 128, 1),
                                    ),
                                    Text('555 Bridge Street, Golden Gate',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromRGBO(55, 65, 81, 1))),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(children: [
                                  Text('4.9',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(
                                              107, 114, 128, 1))),
                                  SizedBox(width: 5),
                                  Icon(CupertinoIcons.star_fill,
                                      size: 15,
                                      color: Color.fromRGBO(254, 176, 82, 1)),
                                  Icon(CupertinoIcons.star_fill,
                                      size: 15,
                                      color: Color.fromRGBO(254, 176, 82, 1)),
                                  Icon(CupertinoIcons.star_fill,
                                      size: 15,
                                      color: Color.fromRGBO(254, 176, 82, 1)),
                                  Icon(CupertinoIcons.star_fill,
                                      size: 15,
                                      color: Color.fromRGBO(254, 176, 82, 1)),
                                  Icon(CupertinoIcons.star_fill,
                                      size: 15,
                                      color: Color.fromRGBO(254, 176, 82, 1)),
                                  SizedBox(width: 5),
                                  Text('(108 Reviews)',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(
                                              107, 114, 128, 1))),
                                ]),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                color: Color.fromRGBO(229, 231, 235, 1),
                                thickness: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image(
                                            height: 14,
                                            width: 14,
                                            image: AssetImage(
                                                'images/routing.png')),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('2.5 km/40min',
                                            style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromRGBO(
                                                    107, 114, 128, 1))),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                            height: 14,
                                            width: 14,
                                            image: AssetImage(
                                                'images/hospital.png')),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('Hospital',
                                            style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromRGBO(
                                                    107, 114, 128, 1))),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Top dentists',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(31, 42, 55, 1))),
                    Row(
                      children: [
                        Text('Relevance',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(107, 114, 128, 1))),
                        SizedBox(width: 5),
                        Icon(
                          CupertinoIcons.arrow_up_arrow_down,
                          size: 20,
                          color: Color.fromRGBO(107, 114, 128, 1),
                        )
                      ],
                    )
                  ],
                ),
              ),

              //Doctor 1
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                  },
                  child: Container(
                    height: 140,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: Color.fromRGBO(243, 244, 246, 1),
                            width: 0.5,
                            strokeAlign: BorderSide.strokeAlignInside),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.05),
                              offset: Offset(0, 4),
                              blurRadius: 6,
                              spreadRadius: 0),
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 15,
                            spreadRadius: -3,
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Container(
                            height: 109,
                            width: 109,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image(
                                  height: 150,
                                  width: 100,
                                  image: AssetImage('images/Lee.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Dr. Lee Cornor',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(
                                                  31, 42, 55, 1)),
                                        ),
                                      ),
                                      Icon(CupertinoIcons.heart),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Divider(
                                    color: Color.fromRGBO(229, 231, 235, 1),
                                    thickness: 1,
                                  ),
                                ),
                                Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 2),
                                    child: Row(children: [
                                      Text(
                                        'Pediatric Dentistry',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(75, 85, 99, 1)),
                                      ),
                                    ])),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on_outlined,
                                          size: 17, color: Colors.grey),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: Text(
                                          '450 Smile, Springfield, IL',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  75, 85, 99, 1)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.star_fill,
                                        size: 17,
                                        color: Colors.yellow,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '5  |  872 Reviews',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(
                                                107, 114, 128, 1)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //Doctor 2
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Center(
                  child: Container(
                    height: 140,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: Color.fromRGBO(243, 244, 246, 1),
                            width: 0.5,
                            strokeAlign: BorderSide.strokeAlignInside),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.05),
                              offset: Offset(0, 4),
                              blurRadius: 6,
                              spreadRadius: 0),
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 15,
                            spreadRadius: -3,
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            height: 113,
                            width: 109,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image(
                                  height: 109,
                                  width: 109,
                                  image: AssetImage('images/Emily.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Dr. Emily Walker',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromRGBO(
                                                    31, 42, 55, 1)),
                                          ),
                                        ),
                                        Icon(CupertinoIcons.heart),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Divider(
                                    color: Color.fromRGBO(229, 231, 235, 1),
                                    thickness: 1,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 2),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Gynecologist',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(75, 85, 99, 1)),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on_outlined,
                                          size: 17, color: Colors.grey),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: Text(
                                          'Women Clinic,Seatle,USA',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  75, 85, 99, 1)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.star_fill,
                                        size: 17,
                                        color: Colors.yellow,
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        '4.9  |  127 Reviews',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(
                                                107, 114, 128, 1)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //Doctor 3
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  height: 140,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: Color.fromRGBO(243, 244, 246, 1),
                          width: 0.5,
                          strokeAlign: BorderSide.strokeAlignInside),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.05),
                            offset: Offset(0, 4),
                            blurRadius: 6,
                            spreadRadius: 0),
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 15,
                          spreadRadius: -3,
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 109,
                          width: 109,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image(
                                height: 109,
                                width: 109,
                                image: AssetImage('images/Michael1.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 7),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Dr. Michael Johnson',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color:
                                                Color.fromRGBO(31, 42, 55, 1)),
                                      ),
                                    ),
                                    Icon(CupertinoIcons.heart),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Divider(
                                  color: Color.fromRGBO(229, 231, 235, 1),
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      'Orthopedic Surgery',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(75, 85, 99, 1)),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on_outlined,
                                        size: 17, color: Colors.grey),
                                    SizedBox(width: 2),
                                    Expanded(
                                      child: Text(
                                        'Maple Associates, NY,USA',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromRGBO(75, 85, 99, 1)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.star_fill,
                                      size: 17,
                                      color: Colors.yellow,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '4.7  |  5,223 Reviews',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(107, 114, 128, 1)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //Doctor 4
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    height: 140,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: Color.fromRGBO(243, 244, 246, 1),
                            width: 0.5,
                            strokeAlign: BorderSide.strokeAlignInside),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.05),
                              offset: Offset(0, 4),
                              blurRadius: 6,
                              spreadRadius: 0),
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 15,
                            spreadRadius: -3,
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: Row(
                        children: [
                          Container(
                            height: 115,
                            width: 109,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image(
                                  height: 150,
                                  width: 100,
                                  image: AssetImage('images/DanHowell.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Dr. DanHowell',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color:
                                                Color.fromRGBO(31, 42, 55, 1)),
                                      ),
                                      Icon(CupertinoIcons.heart),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Divider(
                                    color: Color.fromRGBO(229, 231, 235, 1),
                                    thickness: 1,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Pediatrics',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(75, 85, 99, 1)),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on_outlined,
                                          size: 17, color: Colors.grey),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: Text(
                                          'Serenity Pediatrics Clinic',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  75, 85, 99, 1)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.star_fill,
                                        size: 17,
                                        color: Colors.yellow,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '5  |  405 Reviews',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(
                                                107, 114, 128, 1)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),

              //Doctor 5
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: Color.fromRGBO(243, 244, 246, 1),
                          width: 0.5,
                          strokeAlign: BorderSide.strokeAlignInside),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.05),
                            offset: Offset(0, 4),
                            blurRadius: 6,
                            spreadRadius: 0),
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 15,
                          spreadRadius: -3,
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 115,
                          width: 109,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image(
                                height: 150,
                                width: 100,
                                image: AssetImage('images/Areesha.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Dr. Areesha Noman',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color:
                                                Color.fromRGBO(31, 42, 55, 1)),
                                      ),
                                    ),
                                    Icon(CupertinoIcons.heart),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Divider(
                                  color: Color.fromRGBO(229, 231, 235, 1),
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(children: [
                                    Text(
                                      'Orthodontics',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(75, 85, 99, 1)),
                                    ),
                                  ])),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on_outlined,
                                        size: 17, color: Colors.grey),
                                    SizedBox(width: 1),
                                    Expanded(
                                      child: Text(
                                        '32 Braces Blvd, Austin, TX',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromRGBO(75, 85, 99, 1)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.star_fill,
                                      size: 17,
                                      color: Colors.yellow,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '5  |  527 Reviews',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(107, 114, 128, 1)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
