import 'package:admin/line_chart/samples/line_chart_sample3.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/header.dart';

class DashboardScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldkey;
  DashboardScreen({required this.scaffoldkey});
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // late BuildContext context;
var show1=true;
var show2=true;


  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            !Responsive.isDesktop(context) ?
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.blue,
                  width: _size.width * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.all(20.0),
                      //   child: Container(
                      //     // color: Colors.red,
                      //     width: _size.width * 0.8,
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       children: [
                      //         Column(
                      //           children: [
                      //             Container(
                      //               height: 40,
                      //               width: 40,
                      //               // color: Colors.red,
                      //               decoration: BoxDecoration(
                      //                   color: Colors.white,
                      //                   borderRadius: BorderRadius.circular(25)
                      //               ),
                      //               child: IconButton(
                      //                   icon: Icon(Icons.search, color: Colors.black),
                      //                   onPressed: () {
                      //                     widget.scaffoldkey.currentState!.openDrawer();
                      //                   }
                      //                 // Navigator.of(context).pop(),
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //         Column(
                      //           children: [
                      //             Container(
                      //               height: 50,
                      //               child: Image.asset('assets/images/logo.jpg'),
                      //             ),
                      //           ],
                      //         ),
                      //         Column(
                      //           children: [
                      //             Text('AJMAL',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.035,fontWeight: FontWeight.w700),),
                      //             // SizedBox(height: 10,),
                      //             Text('DASHBOARD',style: TextStyle(color: Colors.blue, fontSize: _size.width * 0.035,fontWeight: FontWeight.w700,letterSpacing: 1),),
                      //           ],
                      //         ),
                      //         Column(
                      //           children: [
                      //             Container(
                      //               child: CircleAvatar(radius: 25,
                      //                   child: Image.asset('assets/images/profile_pic.png',fit: BoxFit.cover,)),
                      //             ),
                      //           ],
                      //         ),
                      //         Column(
                      //           children: [
                      //             Icon(Icons.menu),
                      //           ],
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      SizedBox(height: _size.height / 40),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: _size.width,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          // padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('Account',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.035,fontWeight: FontWeight.w700),),
                                  SizedBox(height: _size.height * 0.01,),
                                  Container(
                                      padding: EdgeInsets.all(5),
                                      color: Color(0xff7DEB95),
                                      // height: 25,
                                      child: Row(
                                        children: [
                                          Text('AJYTR5634F', style: TextStyle(color: Colors.black87,fontSize: _size.width * 0.035,fontWeight: FontWeight.w700),),
                                          Icon(Icons.arrow_drop_down,color: Colors.black87,),
                                        ],
                                      )
                                  ),
                                ],
                              ),
                              Column(
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: _size.height * 0.01,),
                                  Text('CURRENT',style: TextStyle(color: Colors.orange,letterSpacing: 1, fontSize: _size.width * 0.035,fontWeight: FontWeight.w700),),
                                  SizedBox(height: _size.height * 0.02,),
                                  Text('INVESTED',style: TextStyle(color: Colors.blue,letterSpacing: 1, fontSize: _size.width * 0.035,fontWeight: FontWeight.w700),),
                                ],
                              ),
                              Column(
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: _size.height * 0.01,),
                                  Text('\$5000.34',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.035,fontWeight: FontWeight.w700),),
                                  SizedBox(height: _size.height * 0.02,),
                                  Text('\$5000.35',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.035,fontWeight: FontWeight.w700),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  width: _size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xff20AAD6),
                                  ),
                                  child: Text("Quick Trade",textAlign: TextAlign.center,)
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: _size.width,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      suffixIcon: Icon(Icons.search,color: Colors.black,),
                                      // suffixStyle: TextStyle(color: Colors.white),
                                      border: InputBorder.none,
                                      labelText: 'Search',
                                      labelStyle: TextStyle(
                                          color: Colors.black
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          width: _size.width,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: _size.height * 0.01,),
                                  Text('CASH',style: TextStyle(color: Colors.orange,letterSpacing: 1, fontSize: _size.width * 0.035,fontWeight: FontWeight.w700),),
                                  SizedBox(height: _size.height * 0.01,),
                                  Text('\$155.55', style: TextStyle(color: Colors.white,fontSize: _size.width * 0.035,fontWeight: FontWeight.w700),),
                                ],
                              ),
                              // SizedBox(height: _size.width * 0.01,),
                              Column(
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: _size.height * 0.01,),
                                  Text('SECURITIES',style: TextStyle(color: Color(0xff20AAD6),letterSpacing: 1, fontSize: _size.width * 0.035,fontWeight: FontWeight.w700),),
                                  SizedBox(height: _size.height * 0.01,),
                                  Text('\$5000.35',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.035,fontWeight: FontWeight.w700),),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    // height: 150,
                                      child: Icon(Icons.add_chart,size: 50,)
                                    // Image(
                                    //   image: AssetImage('assets/images/triangle.jpg'),
                                    // ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Container(
                            width: _size.width,
                            decoration: BoxDecoration(
                                color: Color(0xff2EED59),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(height: _size.height * 0.01,),
                                    Text('TODAY',style: TextStyle(color: Colors.black,letterSpacing: 1, fontSize: _size.width * 0.035,fontWeight: FontWeight.w700),),
                                    SizedBox(height: _size.height * 0.01,),
                                    Text('+33.40', style: TextStyle(color: Colors.white,fontSize: _size.width * 0.035,fontWeight: FontWeight.w900),),
                                  ],
                                ),
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    SizedBox(height: _size.height * 0.01,),
                                    Text('PROFIT / LOSS',style: TextStyle(color: Colors.black,letterSpacing: 1, fontSize: _size.width * 0.035,fontWeight: FontWeight.w700),),
                                    SizedBox(height: _size.height * 0.01,),
                                    Text('1.22%',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.035,fontWeight: FontWeight.w900),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Container(
                            child: Image(image: AssetImage('assets/images/image6.jpg',),fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Container(
                            width: _size.width,
                            decoration: BoxDecoration(
                                color: Color(0xffD40303),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(height: _size.height * 0.01,),
                                    Text('OVER ALL',style: TextStyle(color: Colors.black,letterSpacing: 1, fontSize: _size.width * 0.035,fontWeight: FontWeight.w700),),
                                    SizedBox(height: _size.height * 0.01,),
                                    Text('-156.40', style: TextStyle(color: Colors.white,fontSize: _size.width * 0.035,fontWeight: FontWeight.w900),),
                                  ],
                                ),
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    SizedBox(height: _size.height * 0.01,),
                                    Text('PROFIT / LOSS',style: TextStyle(color: Colors.black,letterSpacing: 1, fontSize: _size.width * 0.035,fontWeight: FontWeight.w700),),
                                    SizedBox(height: _size.height * 0.0,),
                                    Text('1.22%',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.035,fontWeight: FontWeight.w900),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Container(
                              child: LineChartSample3()
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    InkWell(
                      child: RotatedBox(
                          quarterTurns: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              // height: 30,
                              // padding: EdgeInsets.all(2),
                              // width: 100,
                                color: Color(0xff20AAD6),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text('Workspace 1 x', style: TextStyle(fontSize: 15),),
                                )
                            ),
                          )
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: RotatedBox(
                          quarterTurns: 1,
                          child: Container(
                            // height: 30,
                            // padding: EdgeInsets.all(2),
                            // width: 100,
                            // color: Colors.blue,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text('Workspace 1 x', style: TextStyle(fontSize: 15,color: Colors.grey),),
                              )
                          )
                      ),
                    )
                  ],
                ),
              ],
            ) : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    show1 ? Container(
                      width:_size.width * 0.9456,
                      color: Colors.black.withOpacity(0.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                show1=false;
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.only(top: 10,bottom: 10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                                    // color: Colors.red,
                                    // borderRadius: BorderRadius.circular(10)
                                ),
                                child : RotatedBox(
                                    quarterTurns: 1,
                                    child: Text('HIDE'),
                                )
                            ),
                          ),
                          SizedBox(width: 15,),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.withOpacity(0.5)),
                                // color: Colors.red,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text('ALGO(14)',style: TextStyle(color: Colors.grey,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                    Text('GAINING : 11',style: TextStyle(color: Colors.orange,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                    Text('LOSING : 3',style: TextStyle(color: Colors.blue,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.withOpacity(0.5)),
                                // color: Colors.red,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text('CASH',style: TextStyle(color: Colors.orange,letterSpacing: 1, fontSize: _size.width * 0.008),),
                                    Text('155',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.008),),
                                    Text('Securities',style: TextStyle(color: Colors.blue,letterSpacing: 1, fontSize: _size.width * 0.008),),
                                    Text('5427',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.008),),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.withOpacity(0.5)),
                                // color: Colors.red,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text('ASSETS (25)',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                        // Text('CURRENT',style: TextStyle(color: Colors.orange,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                        // Text('INVESTED',style: TextStyle(color: Colors.blue,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('Losing',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                        SizedBox(width: 10,),
                                        Container(
                                            padding: EdgeInsets.only(left: 25,right: 25),
                                            decoration: BoxDecoration(
                                                color: Color(0xffFF9900),
                                            ),
                                            // height: 25,
                                            child: Row(
                                              children: [
                                                Text('20', style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700,fontSize: _size.width * 0.009),),
                                                // Icon(Icons.arrow_drop_down,color: Colors.black,),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.only(left: 25,right: 25),
                                            decoration: BoxDecoration(
                                              color: Color(0xff02B7F0),
                                            ),
                                            // height: 25,
                                            child: Row(
                                              children: [
                                                Text('5', style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700,fontSize: _size.width * 0.009),),
                                                // Icon(Icons.arrow_drop_down,color: Colors.black,),
                                              ],
                                            )
                                        ),
                                        SizedBox(width: 10,),
                                        Text('Gaining',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.withOpacity(0.5)),
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            // padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    // SizedBox(height: _size.height * 0.015,),
                                    Text('TODAY',style: TextStyle(color: Colors.black,letterSpacing: 1, fontSize: _size.width * 0.009,fontWeight: FontWeight.w700),),
                                    // SizedBox(height: _size.height * 0.01,),
                                    Text('-156', style: TextStyle(color: Colors.white,fontSize: _size.width * 0.009,fontWeight: FontWeight.w900),),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // SizedBox(height: _size.height * 0.01,),
                                    Text('PROFIT / LOSS',style: TextStyle(color: Colors.black,letterSpacing: 1, fontSize: _size.width * 0.009,fontWeight: FontWeight.w700),),
                                    // SizedBox(height: _size.height * 0.02,),
                                    Text('1.22%',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009,fontWeight: FontWeight.w900),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            // height: 100,
                            width: _size.width * 0.1,
                            child: Image(image: AssetImage('assets/images/image6.jpg'),),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.withOpacity(0.5)),
                                color: Color(0xff2EED59),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            // padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    // SizedBox(height: _size.height * 0.015,),
                                    Text('TODAY',style: TextStyle(color: Colors.black,letterSpacing: 1, fontSize: _size.width * 0.009,fontWeight: FontWeight.w700),),
                                    // SizedBox(height: _size.height * 0.01,),
                                    Text('+33.40', style: TextStyle(color: Colors.white,fontSize: _size.width * 0.009,fontWeight: FontWeight.w900),),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // SizedBox(height: _size.height * 0.01,),
                                    Text('PROFIT / LOSS',style: TextStyle(color: Colors.black,letterSpacing: 1, fontSize: _size.width * 0.009,fontWeight: FontWeight.w700),),
                                    // SizedBox(height: _size.height * 0.02,),
                                    Text('1.22%',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009,fontWeight: FontWeight.w900),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            // padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.withOpacity(0.5)),
                                // color: Colors.red,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text('Account',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                        Text('CURRENT',style: TextStyle(color: Colors.orange,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                        Text('INVESTED',style: TextStyle(color: Colors.blue,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                      ],
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.only(left: 7,bottom: 5,top: 5),
                                            // color: Colors.green,
                                            decoration: BoxDecoration(
                                                color: Color(0xff7DEB95),
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            // height: 25,
                                            child: Row(
                                              children: [
                                                Text('AJYTR5634F', style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700,fontSize: _size.width * 0.009),),
                                                Icon(Icons.arrow_drop_down,color: Colors.black,),
                                              ],
                                            )
                                        ),
                                        Text('5000.34',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                        Text('5000.35',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.withOpacity(0.5)),
                                // color: Colors.red,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                      width: _size.width * 0.1,
                                      height: 30,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Color(0xff20AAD6),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Text("Quick Trade",textAlign: TextAlign.center,style: TextStyle(fontSize: _size.width * 0.009),)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    width: _size.width*0.1,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          filled: true,
                                          suffixIcon: Icon(Icons.search,color: Colors.black,),
                                          // suffixStyle: TextStyle(color: Colors.white),
                                          border: InputBorder.none,
                                          labelText: 'Search',
                                          labelStyle: TextStyle(
                                              color: Colors.black
                                          )
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                // width: _size.width * 0.1,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                                    // color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                // color: Colors.red,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          // width: _size.width * 0.1,
                                          child: CircleAvatar(
                                              radius: _size.width * 0.01,
                                              child: Image.asset('assets/images/profile_pic.png')
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Text('AJMAL',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(
                                              width: _size.width * 0.1,
                                              height: 30,
                                              padding: EdgeInsets.all(1),
                                              decoration: BoxDecoration(
                                                  color: Color(0xffD40303),
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                              child: Text("Logout",textAlign: TextAlign.center,style: TextStyle(fontSize: _size.width * 0.009),)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )

                          ),
                        ],
                      ),
                    ) : Container(
                      width:_size.width * 0.9456,
                      color: Colors.black.withOpacity(0.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                show1=true;
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                                ),
                                child : Text('show')
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.withOpacity(0.5)),
                              // color: Colors.red,
                              // borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              children: [
                                Text('ALGOS',style: TextStyle(color: Colors.grey,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                SizedBox(width: 10,),
                                Text('11',style: TextStyle(color: Colors.orange,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                Text('/',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                Text('3',style: TextStyle(color: Colors.blue,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                SizedBox(width: 20,),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.withOpacity(0.5)),
                              // color: Colors.red,
                              // borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              children: [
                                Text('CASH',style: TextStyle(color: Colors.grey,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                SizedBox(width: 10,),
                                Text('\$115',style: TextStyle(color: Colors.orange,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                Text('/',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                Text('INVESTMENTS',style: TextStyle(color: Colors.grey,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                SizedBox(width: 10,),
                                Text('\$5427',style: TextStyle(color: Colors.blue,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                SizedBox(width: 20,),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.withOpacity(0.5)),
                            ),
                            child: Row(
                              children: [
                                Text('ASSETS',style: TextStyle(color: Colors.grey,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                SizedBox(width: 10,),
                                Text('20',style: TextStyle(color: Colors.orange,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                Text('/',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                Text('5',style: TextStyle(color: Colors.blue,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                SizedBox(width: 20,),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.withOpacity(0.5)),
                            ),
                            child: Row(
                              children: [
                                Text('OVERALL',style: TextStyle(color: Colors.grey,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                SizedBox(width: 10,),
                                Text('-156',style: TextStyle(color: Colors.red,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                Text('-123%',style: TextStyle(color: Colors.red,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.withOpacity(0.5)),
                            ),
                            child: Row(
                              children: [
                                Text('TODAY',style: TextStyle(color: Colors.grey,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                SizedBox(width: 10,),
                                Text('156',style: TextStyle(color: Colors.green,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                Text('123%',style: TextStyle(color: Colors.green,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.withOpacity(0.5)),
                            ),
                            child: Row(
                              children: [
                                Text('ACCOUNT No',style: TextStyle(color: Colors.grey,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.withOpacity(0.5)),
                            ),
                            child: Row(
                              children: [
                                Text('SEARCH',style: TextStyle(color: Colors.grey,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.withOpacity(0.5)),
                            ),
                            child: Row(
                              children: [
                                Text('TRADE',style: TextStyle(color: Colors.grey,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                // width: _size.width * 0.1,
                                child: CircleAvatar(
                                    radius: _size.width * 0.01,
                                    child: Image.asset('assets/images/profile_pic.png')
                                ),
                              ),
                              Text('AJMAL',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                    width: _size.width * 0.05,
                                    height: 30,
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                        color: Color(0xffD40303),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Text("Logout",textAlign: TextAlign.center,style: TextStyle(fontSize: _size.width * 0.009),)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    show2 ? Container(
                        width:_size.width * 0.9456,
                      color: Colors.black.withOpacity(0.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                show2=false;
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.only(top: 10,bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                                  // color: Colors.red,
                                  // borderRadius: BorderRadius.circular(10)
                                ),
                                child : RotatedBox(
                                  quarterTurns: 1,
                                  child: Text('HIDE'),
                                )
                            ),
                          ),
                          SizedBox(width: 15,),
                          Column(
                            children: [
                              Row(
                                  children: [
                                    Text('DIA',style: TextStyle(color: Colors.red,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                    SizedBox(width: 10,),
                                    Text('296.75',style: TextStyle(color: Colors.red,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                    SizedBox(width: 10,),
                                    Text('-2.49(-0.83%)',style: TextStyle(color: Colors.red,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                    SizedBox(width: 20,),
                                    Text('DIA',style: TextStyle(color: Colors.red,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                    SizedBox(width: 10,),
                                    Text('296.75',style: TextStyle(color: Colors.red,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                    SizedBox(width: 10,),
                                    Text('-2.49(-0.83%)',style: TextStyle(color: Colors.red,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                    SizedBox(width: 20,),
                                  ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text('QQQ',style: TextStyle(color: Colors.green,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                  SizedBox(width: 10,),
                                  Text('299.58',style: TextStyle(color: Colors.green,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                  SizedBox(width: 10,),
                                  Text('0.56(0.19%)',style: TextStyle(color: Colors.green,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                  SizedBox(width: 20,),
                                  Text('QQQ',style: TextStyle(color: Colors.green,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                  SizedBox(width: 10,),
                                  Text('299.58',style: TextStyle(color: Colors.green,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                  SizedBox(width: 10,),
                                  Text('0.56(0.19%)',style: TextStyle(color: Colors.green,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                  SizedBox(width: 20,),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            // width: 300,
                            child: Image(image: AssetImage('assets/images/map.jpg'),fit: BoxFit.cover,),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                // width: _size.width * 0.15,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.withOpacity(0.5)),
                                    // color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                // color: Colors.red,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      // mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          // width: _size.width * 0.1,
                                          child: CircleAvatar(
                                              radius: _size.width * 0.01,
                                              child: Image.asset('assets/images/profile_pic.png')
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('News',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                        Text('Title',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.008),),
                                        Text('News Description News',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.007),),
                                        Text('Description News Description',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.007),),
                                      ],
                                    ),
                                  ],
                                ),
                              )

                          ),
                          SizedBox(width: 10,),
                          Padding(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                // width: _size.width * 0.15,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                                    // color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                // color: Colors.red,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      // mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          // width: _size.width * 0.1,
                                          child: CircleAvatar(
                                              radius: _size.width * 0.01,
                                              child: Image.asset('assets/images/profile_pic.png')
                                          ),
                                        ),
                                        // SizedBox(width: 10,),
                                        // Text('AJMAL',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                      ],
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('News',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                        Text('Title',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.008),),
                                        Text('News Description News',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.007),),
                                        Text('Description News Description',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.007),),
                                      ],
                                    ),
                                  ],
                                ),
                              )

                          ),
                          SizedBox(width: 10,),
                          Padding(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                // width: _size.width * 0.15,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                                    // color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                // color: Colors.red,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      // mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          // width: _size.width * 0.1,
                                          child: CircleAvatar(
                                              radius: _size.width * 0.01,
                                              child: Image.asset('assets/images/profile_pic.png')
                                          ),
                                        ),
                                        // SizedBox(width: 10,),
                                        // Text('AJMAL',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                      ],
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('News',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                                        Text('Title',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.008),),
                                        Text('News Description News',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.007),),
                                        Text('Description News Description',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.007),),
                                      ],
                                    ),
                                  ],
                                ),
                              )

                          ),
                        ],
                      ),
                    ) : Container(
                      color: Colors.black.withOpacity(0.5),
                      width:_size.width * 0.9456,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                show2=true;
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                                ),
                                child : Text('show')
                            ),
                          ),
                          Row(
                            children: [
                              Text('DIA',style: TextStyle(color: Colors.grey,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 10,),
                              Text('299.58',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 10,),
                              Text('0.56(0.19%)',style: TextStyle(color: Colors.red,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 20,),
                              Text('QQQ',style: TextStyle(color: Colors.grey,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 10,),
                              Text('299.58',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 10,),
                              Text('0.56(0.19%)',style: TextStyle(color: Colors.green,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 20,),
                            ],
                          ),
                          Row(
                            children: [
                              Text('DIA',style: TextStyle(color: Colors.grey,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 10,),
                              Text('299.58',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 10,),
                              Text('0.56(0.19%)',style: TextStyle(color: Colors.red,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 20,),
                              Text('QQQ',style: TextStyle(color: Colors.grey,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 10,),
                              Text('299.58',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 10,),
                              Text('0.56(0.19%)',style: TextStyle(color: Colors.green,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 20,),
                            ],
                          ),
                          Row(
                            children: [
                              Text('DIA',style: TextStyle(color: Colors.grey,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 10,),
                              Text('299.58',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 10,),
                              Text('0.56(0.19%)',style: TextStyle(color: Colors.red,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 20,),
                              Text('QQQ',style: TextStyle(color: Colors.grey,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 10,),
                              Text('299.58',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 10,),
                              Text('0.56(0.19%)',style: TextStyle(color: Colors.green,letterSpacing: 1, fontSize: _size.width * 0.009),),
                              SizedBox(width: 20,),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            width: _size.width * 0.23,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: _size.width * 0.22,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: _size.width * 0.22,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: _size.width * 0.22,
                            height: 200,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: _size.width * 0.23,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: _size.width * 0.22,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: _size.width * 0.22,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: _size.width * 0.22,
                            height: 200,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: _size.width * 0.23,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: _size.width * 0.22,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: _size.width * 0.22,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: _size.width * 0.22,
                            height: 200,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: _size.width * 0.23,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: _size.width * 0.22,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: _size.width * 0.22,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            width: _size.width * 0.22,
                            height: 200,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  color: Colors.grey.withOpacity(0.2),
                  height: _size.height,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                          // borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.withOpacity(0.5))
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.fullscreen_exit_sharp),
                            SizedBox(height: 10,),
                            Icon(Icons.settings),
                            SizedBox(height: 10,),
                            Icon(Icons.headphones),
                            SizedBox(height: 10,),
                            Icon(Icons.mail_outline),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      InkWell(
                        child: RotatedBox(
                            quarterTurns: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff20AAD6),
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),
                                      //   border: Border.all(color: Colors.grey.withOpacity(0.5))
                                    ),
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Text('Workspace 1 x', style: TextStyle(fontSize: 15),),
                                  )
                              ),
                            )
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: RotatedBox(
                            quarterTurns: 1,
                            child: Container(
                              padding: EdgeInsets.only(left: 5),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),
                                  //   border: Border.all(color: Colors.grey.withOpacity(0.5))
                                ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text('Workspace 1 x', style: TextStyle(fontSize: 15,color: Colors.white),),
                                )
                            )
                        ),
                      ),
                      SizedBox(height: 10,),
                      Icon(Icons.add,color: Colors.white,)
                    ],
                  ),
                ),
              ],
            ) ,
          ],
        ),
      ),
    );
  }
}
