import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeect_1/SelectTimeScreen.dart';
import 'package:view_more/view_more.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Doctor Details ',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                )),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(CupertinoIcons.heart),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 150,
                    width: 320,
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
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              offset: Offset(0, 10),
                              blurRadius: 15,
                              spreadRadius: -3),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('images/Lee.png')),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 30),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 60),
                                    child: Text(
                                      'Dr. Lee Cornor',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromRGBO(31, 42, 55, 1)),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Color.fromRGBO(229, 231, 235, 1),
                                thickness: 2,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 50),
                                child: Row(
                                  children: [
                                    Text(
                                      'Pediatric Dentistry',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(75, 85, 99, 1)),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on_outlined,
                                        size: 20, color: Colors.grey),
                                    Text(
                                      '450 Smile, Springfield, IL',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(75, 85, 99, 1)),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(40)),
                              child: Icon(CupertinoIcons.person_2_fill,
                                  size: 25,
                                  color: Color.fromRGBO(28, 42, 58, 1))),
                          SizedBox(height: 5),
                          Text(
                            '2,000+',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(75, 85, 99, 1)),
                          ),
                          Text('patients',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(107, 114, 128, 1)))
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(40)),
                              child: Icon(Icons.emoji_events,
                                  color: Color.fromRGBO(28, 42, 58, 1))),
                          SizedBox(height: 5),
                          Text(
                            '10+',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(75, 85, 99, 1)),
                          ),
                          Text('experience',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(107, 114, 128, 1)))
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(40)),
                              child: Icon(CupertinoIcons.star_fill,
                                  size: 25,
                                  color: Color.fromRGBO(28, 42, 58, 1))),
                          SizedBox(height: 5),
                          Text(
                            '5',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(75, 85, 99, 1)),
                          ),
                          Text('rating',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(107, 114, 128, 1)))
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(40)),
                              child: Icon(CupertinoIcons.chat_bubble_2_fill,
                                  size: 25,
                                  color: Color.fromRGBO(28, 42, 58, 1))),
                          SizedBox(height: 5),
                          Text(
                            '872',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(75, 85, 99, 1)),
                          ),
                          Text('reviews',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(107, 114, 128, 1)))
                        ],
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('About me',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(31, 42, 55, 1))),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: ViewMore(
                  'Dr. Lee offers state-of-the-art orthodontic solutions, including Invisalign and traditional braces, to create perfect smiles for patients of all ages. Dr. Lee ensures that every patient achieves their desired results with comfort and ease. ',
                  trimExpandedText: 'view less',
                  trimCollapsedText: 'view more',
                  trimLines: 4,
                  trimMode: Trimer.line,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(107, 114, 128, 1)),
                  moreStyle: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(17, 25, 40, 1),
                  ),
                  lessStyle: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(17, 25, 40, 1),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Working Time',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(31, 42, 55, 1))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Monday-Friday, 08.00 AM-18.00 PM',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(107, 114, 128, 1))),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Reviews',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(31, 42, 55, 1))),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('See All',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(107, 114, 128, 1))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('images/Adil.jpg'),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            Text('Adil Aijaz',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(55, 65, 81, 1))),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(children: [
                          Text('5.0',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(107, 114, 128, 1))),
                          SizedBox(width: 5),
                          Icon(CupertinoIcons.star_fill,
                              size: 15, color: Color.fromRGBO(254, 176, 82, 1)),
                          Icon(CupertinoIcons.star_fill,
                              size: 15, color: Color.fromRGBO(254, 176, 82, 1)),
                          Icon(CupertinoIcons.star_fill,
                              size: 15, color: Color.fromRGBO(254, 176, 82, 1)),
                          Icon(CupertinoIcons.star_fill,
                              size: 15, color: Color.fromRGBO(254, 176, 82, 1)),
                          Icon(CupertinoIcons.star_fill,
                              size: 15, color: Color.fromRGBO(254, 176, 82, 1)),
                        ]),
                      ),
                    ]),
                  )
                ]),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                child: ViewMore(
                  'He is a true professional who genuinely cares about his patients. I highly recommend Dr. Patel to anyone seeking exceptional cardiac care. ',
                  trimExpandedText: 'view less',
                  trimCollapsedText: 'view more',
                  trimLines: 2,
                  trimMode: Trimer.line,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(107, 114, 128, 1)),
                  moreStyle: TextStyle(
                    fontFamily: 'Inter',
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(17, 25, 40, 1),
                  ),
                  lessStyle: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(17, 25, 40, 1),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TimeScreen()));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                      height: 48,
                      width: 360,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(28, 42, 58, 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('Book Appointment',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            )),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
