import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeect_1/DoctorProfile.dart';

class FindDoctor extends StatelessWidget {
  const FindDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'All Doctors',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Center(
                child: Container(
                  height: 40,
                  width: 340,
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
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(61),
                          color: Color.fromRGBO(28, 42, 58, 1),
                        ),
                        child: Center(
                          child: Text(
                            'All',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(61),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'General',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color.fromRGBO(28, 42, 58, 1),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(61),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'Orthodontics',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color.fromRGBO(75, 85, 99, 1)),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(61),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'Surgery',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color.fromRGBO(28, 42, 58, 1)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),

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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
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
                                        'Cosmetic Dentistry',
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

              //Doctor 5
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
                                      Expanded(
                                        child: Text(
                                          'Dr. DanHowell',
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
            ]),
          ),
        ),
      ),
    );
  }
}
