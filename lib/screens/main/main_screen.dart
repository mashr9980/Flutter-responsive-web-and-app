import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool webDrawer =false;
  bool openDrawer = false;
  bool isSwitched = false;
  GlobalKey<ScaffoldState>  scaffoldKey  = new GlobalKey<ScaffoldState>();
  int selectedIndex = -1;//dont set it to 0
  bool isExpanded = false;

  Widget blackIconMenu(BuildContext context){
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: Colors.black.withOpacity(0.8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(seconds:1),
              width: size.width * 0.15,
              // height: size.height,
              // color: Colors.red.withOpacity(0.8),
              child : Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(height: size.height * 0.048,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          // color: Colors.red,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: IconButton(
                              icon: Icon(Icons.search, color: Colors.black),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }

                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height / 10,
                  ),
                  Column(
                    children: [
                      // SizedBox(height: size.height / 30,),
                      AnimatedContainer(
                          duration: Duration(seconds: 1),
                          decoration: BoxDecoration(
                              color: Color(0xff20AAD6),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: InkWell(
                              onTap: (){
                                setState(() {
                                  openDrawer=!openDrawer;
                                });
                              },
                              child: Icon(Icons.history_toggle_off,size: 50,))
                      ),
                      SizedBox(height: size.height / 25,),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(Icons.bar_chart_outlined,size: 40,)
                      ),
                      SizedBox(height: size.height / 25,),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(Icons.bubble_chart,size: 40,)
                      ),
                      SizedBox(height: size.height / 25,),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(Icons.format_strikethrough,size: 40,)
                      ),
                      SizedBox(height: size.height / 25,),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(Icons.ac_unit,size: 40,)
                      ),
                      SizedBox(height: size.height / 25,),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(Icons.bar_chart,size: 40,)
                      ),
                      SizedBox(height: size.height / 25,),
                    ],
                  ),
                  SizedBox(
                    height: size.height / 10,
                  ),
                  Container(
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                // print(isSwitched);
                              });
                            },
                            activeTrackColor: Colors.lightGreenAccent,
                            activeColor: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('CLOSE'),
                        ),
                        Center(
                          child: Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                // print(isSwitched);
                              });
                            },
                            activeTrackColor: Colors.lightGreenAccent,
                            activeColor: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Pause'),
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget invisibleSubMenus(BuildContext context){
    final Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: Duration(milliseconds:500),
      width: isExpanded ? 0 : size.width * 0.85,
      color: Colors.transparent,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            width: 300,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  suffixIcon: Icon(Icons.search,color: Colors.black,),
                  // suffixStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                  labelText: 'SEARCH..',
                  labelStyle: TextStyle(
                      color: Colors.black
                  )
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          openDrawer ? InkWell(
            onTap: (){
              print('dssddcskjbvcjb');
            },
            child: Container(
              // padding: EdgeInsets.all(1),
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width * 0.09,
                    // color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height * 0.066,),
                        Image(image: AssetImage('assets/images/download.png')),
                        // SizedBox(height: size.height * 0.02,),
                        // Text('<',style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900),),
                        // Icon(Icons.arrow_back_ios_sharp,color: Colors.white,size: 50,),
                        // SizedBox(width: size.width * 0.02,),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                            color: Colors.black.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: size.height * 0.03,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: size.width * 0.08,),
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                        child: Icon(Icons.bar_chart,size: 50,)
                                    ),
                                    Text('Charts',style: TextStyle(
                                      color: Colors.grey
                                    ),)
                                  ],
                                ),
                                SizedBox(width: size.width * 0.08,),
                                Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Icon(Icons.add_chart,size: 50,)
                                    ),
                                    Text('Charts',style: TextStyle(
                                        color: Colors.grey
                                    ),)
                                  ],
                                ),
                                SizedBox(width: size.width * 0.08,),
                                Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Icon(Icons.history_toggle_off,size: 50,)
                                    ),
                                    Text('Charts',style: TextStyle(
                                        color: Colors.grey
                                    ),)
                                  ],
                                ),
                                SizedBox(width: size.width * 0.08,),
                              ],
                            ),
                            SizedBox(height: size.height * 0.03,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: size.width * 0.08,),
                                Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Icon(Icons.bar_chart,size: 50,)
                                    ),
                                    Text('Charts',style: TextStyle(
                                        color: Colors.grey
                                    ),)
                                  ],
                                ),
                                SizedBox(width: size.width * 0.08,),
                                Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Icon(Icons.add_chart,size: 50,)
                                    ),
                                    Text('Charts',style: TextStyle(
                                        color: Colors.grey
                                    ),)
                                  ],
                                ),
                                SizedBox(width: size.width * 0.08,),
                                Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Icon(Icons.history_toggle_off,size: 50,)
                                    ),
                                    Text('Charts',style: TextStyle(
                                        color: Colors.grey
                                    ),)
                                  ],
                                ),
                                SizedBox(width: size.width * 0.08,),
                              ],
                            ),
                            SizedBox(height: size.height * 0.03,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: size.width * 0.08,),
                                Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Icon(Icons.bar_chart,size: 50,)
                                    ),
                                    Text('Charts',style: TextStyle(
                                        color: Colors.grey
                                    ),)
                                  ],
                                ),
                                SizedBox(width: size.width * 0.08,),
                                Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Icon(Icons.add_chart,size: 50,)
                                    ),
                                    Text('Charts',style: TextStyle(
                                        color: Colors.grey
                                    ),)
                                  ],
                                ),
                                SizedBox(width: size.width * 0.08,),
                                Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Icon(Icons.history_toggle_off,size: 50,)
                                    ),
                                    Text('Charts',style: TextStyle(
                                        color: Colors.grey
                                    ),)
                                  ],
                                ),
                                SizedBox(width: size.width * 0.08,),
                              ],
                            ),
                            SizedBox(height: size.height * 0.03,),
                            // Container(height:95),
                            // Expanded(
                            //   child: ListView.builder(
                            //
                            //       itemCount: cdms.length,
                            //       itemBuilder: (context, index){
                            //         CDM cmd = cdms[index];
                            //         bool selected = selectedIndex==index;
                            //         bool isValidSubMenu = selected && cmd.submenus.isNotEmpty;
                            //         return subMenuWidget(cmd.submenus,isValidSubMenu);
                            //       }
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ) : SizedBox(),
          Container(
            color: Colors.red,
            // child: Text('assaas'),
          )
        ],
      ),
    );
  }
  Widget row() {
    return Row(
        children: [
          blackIconMenu(context),
          InkWell(
            onTap: () {
              print('sdds');
              Navigator.of(context).pop();
              setState(() {
                openDrawer =false;
              });
            },
              child: invisibleSubMenus(context)),
        ]
    );
  }

  Widget webRow(BuildContext context){
    final Size size = MediaQuery.of(context).size;
    return Row(
        children: [
          blackIconMenuweb(context),
          AnimatedContainer(
            duration: Duration(milliseconds:500),
            width: isExpanded ? 0 : 300,
            color: Colors.transparent,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 150,
                ),
                openDrawer ? Container(
                  // padding: EdgeInsets.all(1),
                  // color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 30,
                        // color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: size.height * 0.02,),
                            Image(image: AssetImage('assets/images/download.png')),
                            // SizedBox(height: size.height * 0.02,),
                            // Text('<',style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900),),
                            // Icon(Icons.arrow_back_ios_sharp,color: Colors.white,size: 50,),
                            // SizedBox(width: size.width * 0.02,),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          // SizedBox(height: size.height * 0.038,),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.black.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(height: size.height * 0.01,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(width: size.height * 0.01,),
                                    Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.5),
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: Icon(Icons.bar_chart,size: 50,)
                                        ),
                                        Text('Charts',style: TextStyle(
                                            color: Colors.grey
                                        ),)
                                      ],
                                    ),
                                    SizedBox(width: size.height * 0.01,),
                                    Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.5),
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: Icon(Icons.add_chart,size: 50,)
                                        ),
                                        Text('Charts',style: TextStyle(
                                            color: Colors.grey
                                        ),)
                                      ],
                                    ),
                                    SizedBox(width: size.height * 0.01,),
                                    Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.5),
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: Icon(Icons.history_toggle_off,size: 50,)
                                        ),
                                        Text('Charts',style: TextStyle(
                                            color: Colors.grey
                                        ),)
                                      ],
                                    ),
                                    SizedBox(width: size.height * 0.01,),
                                  ],
                                ),
                                SizedBox(height: size.height * 0.01,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(width: size.height * 0.01,),
                                    Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.5),
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: Icon(Icons.bar_chart,size: 50,)
                                        ),
                                        Text('Charts',style: TextStyle(
                                            color: Colors.grey
                                        ),)
                                      ],
                                    ),
                                    SizedBox(width: size.height * 0.01,),
                                    Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.5),
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: Icon(Icons.add_chart,size: 50,)
                                        ),
                                        Text('Charts',style: TextStyle(
                                            color: Colors.grey
                                        ),)
                                      ],
                                    ),
                                    SizedBox(width: size.height * 0.01,),
                                    Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.5),
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: Icon(Icons.history_toggle_off,size: 50,)
                                        ),
                                        Text('Charts',style: TextStyle(
                                            color: Colors.grey
                                        ),)
                                      ],
                                    ),
                                    SizedBox(width: size.height * 0.01,),
                                  ],
                                ),
                                SizedBox(height: size.height * 0.01,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(width: size.height * 0.01,),
                                    Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.5),
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: Icon(Icons.bar_chart,size: 50,)
                                        ),
                                        Text('Charts',style: TextStyle(
                                            color: Colors.grey
                                        ),)
                                      ],
                                    ),
                                    SizedBox(width: size.height * 0.01,),
                                    Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.5),
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: Icon(Icons.add_chart,size: 50,)
                                        ),
                                        Text('Charts',style: TextStyle(
                                            color: Colors.grey
                                        ),)
                                      ],
                                    ),
                                    SizedBox(width: size.height * 0.01,),
                                    Column(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.5),
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: Icon(Icons.history_toggle_off,size: 50,)
                                        ),
                                        Text('Charts',style: TextStyle(
                                            color: Colors.grey
                                        ),)
                                      ],
                                    ),
                                    SizedBox(width: size.height * 0.01,),
                                  ],
                                ),
                                SizedBox(height: size.height * 0.01,),
                                // Container(height:95),
                                // Expanded(
                                //   child: ListView.builder(
                                //
                                //       itemCount: cdms.length,
                                //       itemBuilder: (context, index){
                                //         CDM cmd = cdms[index];
                                //         bool selected = selectedIndex==index;
                                //         bool isValidSubMenu = selected && cmd.submenus.isNotEmpty;
                                //         return subMenuWidget(cmd.submenus,isValidSubMenu);
                                //       }
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ) : SizedBox(),
              ],
            ),
          )
        ]
    );
  }
  Widget blackIconMenuweb(BuildContext context){
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      height: size.height,
      child: SingleChildScrollView(
        child: AnimatedContainer(
          duration: Duration(seconds:1),
          width: 70,
          color: Colors.black,
          child : Column(
            children: [
              Column(
                children: [
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        child: Image.asset('assets/images/logo.jpg'),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.home,size: 40,)
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 30,),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xff20AAD6),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            openDrawer =! openDrawer;
                          });
                        },
                          child: Icon(Icons.history_toggle_off,size: 40,))
                  ),
                  SizedBox(height: 30,),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.bar_chart_outlined,size: 40,)
                  ),
                  SizedBox(height: 30,),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.bubble_chart,size: 40,)
                  ),
                  SizedBox(height: 30,),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.format_strikethrough,size: 40,)
                  ),
                  SizedBox(height: 30,),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.ac_unit,size: 40,)
                  ),
                  SizedBox(height: 30,),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.bar_chart,size: 40,)
                  ),
                  SizedBox(height: 30,),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),
                  ),
                  Text('CLOSE ALL'),
                  Center(
                    child: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),
                  ),
                  Text('Pause ALL'),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }

  bool openworkspace = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Responsive.isDesktop(context) ? null : AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25)
            ),
            child: IconButton(
                icon: Icon(Icons.search, color: Colors.black),
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                }
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      child: Image.asset('assets/images/logo.jpg'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text('AJMAL',style: TextStyle(color: Colors.white,letterSpacing: 1, fontSize: size.width * 0.035,fontWeight: FontWeight.w700),),
                    // SizedBox(height: 10,),
                    Text('DASHBOARD',style: TextStyle(color: Colors.blue, fontSize: size.width * 0.035,fontWeight: FontWeight.w700,letterSpacing: 1),),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: CircleAvatar(radius: 25,
                          child: Image.asset('assets/images/profile_pic.png',fit: BoxFit.cover,)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.menu),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Responsive.isDesktop(context) ? Container(
        padding: EdgeInsets.only(right: 3),
        color: Colors.black,
        // height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(color: Color(0xffE52545),
                padding: EdgeInsets.only(left: 15),
                width:70,child: Text('Site',style: TextStyle(fontSize: size.width * 0.009,fontWeight: FontWeight.bold),)),
            Text('Welcome : Muhammad Ajmal',style: TextStyle(fontSize: size.width * 0.009,fontWeight: FontWeight.bold),),
            Row(
              children: [
                Row(
                  children: [
                    Text('|',style: TextStyle(fontSize: size.width * 0.009,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Icon(Icons.message,size: size.width * 0.009,),
                    SizedBox(width: 10,),
                    Text('Chat',style: TextStyle(fontSize: size.width * 0.009,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Icon(Icons.add,size: size.width * 0.009,),
                  ],
                ),
                SizedBox(width: 10,),
                Row(
                  children: [
                    Text('|',style: TextStyle(fontSize: size.width * 0.009,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Icon(Icons.add_alert_outlined,size: size.width * 0.009,),
                    SizedBox(width: 10,),
                    Text('Alerts',style: TextStyle(fontSize: size.width * 0.009,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Icon(Icons.add,size: size.width * 0.009,),
                  ],
                ),
                SizedBox(width: 10,),
                Row(
                  children: [
                    Text('|',style: TextStyle(fontSize: size.width * 0.009,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Icon(Icons.panorama,size: size.width * 0.009,),
                    SizedBox(width: 10,),
                    Text('Panels',style: TextStyle(fontSize: size.width * 0.009,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Icon(Icons.add,size: size.width * 0.009,),
                  ],
                ),
                SizedBox(width: 10,),
                Row(
                  children: [
                    Text('|',style: TextStyle(fontSize: size.width * 0.009,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Icon(Icons.add_alert,size: size.width * 0.009,),
                    SizedBox(width: 10,),
                    Text('Alert',style: TextStyle(fontSize: size.width * 0.009,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Icon(Icons.add,size: size.width * 0.009,),
                  ],
                ),
              ],
            )
            // Text('saasa'),
          ],
        ),
      ) : Container(
        padding: EdgeInsets.only(left: 20,right: 20),
        color: Colors.black,
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.view_list,size: 15,),
            Text('|',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.chat_bubble_outlined,size: 15,),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Chat',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
            Text('|',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Row(
              children: [
                Icon(Icons.add_alert,size: 15,),
                SizedBox(
                  width: 8,
                ),
                Text('Alert',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ],
            ),
            // Text('saasa'),
          ],
        )
      ),
      key: scaffoldKey,
      drawer: row(),
      // drawer: Responsive.isMobile(context) ? row() : blackIconMenu(),
      body: SafeArea(
        child: Responsive.isDesktop(context) ? Stack(
          children: [
            webRow(context),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: DashboardScreen(scaffoldkey: scaffoldKey, ),
            ),
          ],
        ) : Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              row(),
            Expanded(
              flex: 5,
              child: DashboardScreen(scaffoldkey: scaffoldKey,),
            ),

          ],
        ),
      ),
    );
  }
}

