import 'dart:io';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fl_listtile_widget/page3.dart';
import 'package:fl_listtile_widget/page4.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fl_listtile_widget/page1.dart';
import 'package:fl_listtile_widget/page2.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}
// // liquid swipe
// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     final pages=[
//       Container(color: Colors.green,),
//       Container(color: Colors.red,),
//       Container(color: Colors.yellow,),
//       Container(color: Colors.blue,),
//     ];
//     return MaterialApp(
//       home: Scaffold(
//         body: LiquidSwipe(pages: pages),
//
//       ),
//     );
//   }
// }

// Image/galripicker
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   File? _file;
   Future CameraImage() async{
    var image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _file = image as File?;
    });
  }
   Future Gallery() async{
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _file = image as File?;
    });
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.blue,
              child: _file==null?Center(child: Text("No image selescted")):Image.file(_file!),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                FloatingActionButton(onPressed: (){
                  CameraImage();
                },child: Icon(Icons.camera_alt),),
                SizedBox(width: 20,),
                FloatingActionButton(onPressed: (){
                  Gallery();
                },child: Icon(Icons.photo),),

              ],
            )
          ],
        ),
      ),
    );
  }
}

//Model bottom Sheet
// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: RaisedButton(onPressed: (){
//             showModalBottomSheet(context: context, builder: (context){
//               return Container(
//                 height: 250,
//                 child: Column(
//                   children:<Widget> [
//                     ListTile(
//                       title: Text("One"),
//                       subtitle: Text("This is one"),
//                       trailing: Icon(Icons.access_alarm),
//                     ),
//                     ListTile(
//                       title: Text("two"),
//                       subtitle: Text("This is two"),
//                       trailing: Icon(Icons.access_alarm),
//                     ),
//                     ListTile(
//                       title: Text("three"),
//                       subtitle: Text("This is three"),
//                       trailing: Icon(Icons.access_alarm),
//                     ),
//                   ],
//                 ),
//               );
//             });
//
//           },child: Text("click"),),
//         ),
//
//       ),
//     );
//   }
// }
//Simple Alert Dialog
// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: RaisedButton(onPressed: (){
//             showDialog(context: context, builder: (context){
//               return AlertDialog(
//                 title: Text("Alert Dialog") ,
//                 content: Text("This is a simple alert dialog"),
//                 actions:<Widget>[
//                   RaisedButton(onPressed: (){
//                     Navigator.pop(context);
//                   },child: Text("Ok"),)
//                 ],
//               );
//             });
//           },
//             child: Text("click"),),
//         ),
//
//       ),
//     );
//   }
// }
//Stack,positioning,floating action bar,listtile
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SafeArea(
//           child: Scaffold(
//             floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
//               body: Center(
//                   child: Stack(
//                     alignment: Alignment.bottomCenter,
//         overflow: Overflow.visible,
//         children: [
//           Container(
//             height: 200,
//             width: 200,
//             color: Colors.amber,
//           ),
//           Positioned(
//             bottom: -50,
//               child: CircleAvatar(
//             radius: 50,
//           ))
//         ],
//       ))
//               // body: ListView(
//               //   children: [
//               //     ListTile(
//               //       title: Text("Easy Explanation"),
//               //       subtitle: Text("Learn everything with easy explanation"),
//               //       leading: CircleAvatar(child: Icon(Icons.message),),
//               //       trailing: Icon(Icons.add_a_photo),
//               //
//               //     ),
//               //     ListTile(
//               //       title: Text("Easy Explanation"),
//               //       subtitle: Text("Learn everything with easy explanation"),
//               //       leading: CircleAvatar(child: Icon(Icons.message),),
//               //       trailing: Icon(Icons.add_a_photo),
//               //
//               //     ),
//               //     ListTile(
//               //       title: Text("Easy Explanation"),
//               //       subtitle: Text("Learn everything with easy explanation"),
//               //       leading: CircleAvatar(child: Icon(Icons.message),),
//               //       trailing: Icon(Icons.add_a_photo),
//               //
//               //     ),
//               //   ],
//               // ),
//
//               )),
//     );
//   }
// }

//Image from asset and network in flutter
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SafeArea(
//           child: Scaffold(
//             body: Center(
//               // child: Image.asset("images/pr.png"),
//               child: Image.network("https://cdn.pixabay.com/photo/2022/01/13/10/39/animal-6934928_960_720.jpg"),
//             ),
//               )),
//     );
//   }
// }
//Card and Gridview in flutter
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SafeArea(
//           child: Scaffold(
//             body: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: GridView.count(
//                   crossAxisCount: 2,
//               mainAxisSpacing: 10,
//               crossAxisSpacing: 10,
//               children: [
//                 Container(
//                   height: 200,
//                   width: 150,
//                   color: Colors.deepOrange,
//                 ),
//                 Container(
//                   height: 200,
//                   width: 150,
//                   color: Colors.amber,
//                 ),
//                 Container(
//                   height: 200,
//                   width: 150,
//                   color: Colors.cyanAccent,
//                 ),
//                 Container(
//                   height: 200,
//                   width: 150,
//                   color: Colors.brown,
//                 ),
//                 Container(
//                   height: 200,
//                   width: 150,
//                   color: Colors.black45,
//                 ),
//                 Container(
//                   height: 200,
//                   width: 150,
//                   color: Colors.red,
//                 ),
//               ],
//               ),
//             )
//             // Center(
//             //   child: Card(
//             //     elevation: 10,
//             //     shape: RoundedRectangleBorder(
//             //       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))
//             //     ),
//             //     child: Container(
//             //       height: 200,
//             //       width: 200,
//             //     ),
//             //   ),
//             // ),
//
//
//               )),
//     );
//   }
// }
// Expanded widget flutter
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SafeArea(
//           child: Scaffold(
//             body: Column(
//               children: [
//                 Expanded(
//                   flex: 2,
//                     child: Container(
//                       color: Colors.red,
//                 )),
//                 Expanded(
//                   flex: 1,
//                     child: Container(
//                       color: Colors.blue,
//                 )),
//                 Expanded(
//                   flex: 1,
//                     child: Container(
//                       color: Colors.green,
//                 ))
//               ],
//             ),
//
//               )),
//     );
//   }
// }
//Pageview in flutter
// class MyApp extends StatefulWidget {
//
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   PageController _controller= PageController(initialPage: 2,);
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _controller.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: PageView(
//           scrollDirection: Axis.vertical,
//           controller: _controller,
//           children: [
//             Page1(),
//             Page2(),
//             Page3(),
//           ],
//         ),
//       ),
//     );
//   }
// }
//Hero widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Homepage(),
//     );
//   }
// }
//
// class Homepage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: CircleAvatar(
//             radius: 50,
//             child: GestureDetector(
//               child: Hero(
//                 tag: "add",
//                 child: Icon(
//                   Icons.add_a_photo,
//                   size: 50,
//                 ),
//               ),
//               onTap: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => Page1()));
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//Bottom Navigation Bar
// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Homepage(),
//     );
//   }
// }
// class Homepage extends StatefulWidget {
//
//   @override
//   _HomepageState createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   var _currentindex=0;
//   final pages=[
//     Page1(),
//     Page2(),
//     Page3(),
//     page4(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//
//         currentIndex: _currentindex,
//           items: [
//         BottomNavigationBarItem(
//           backgroundColor: Colors.yellow,
//             icon: Icon(Icons.message)
//             ,title: Text("Message")
//         ),
//         BottomNavigationBarItem(icon: Icon(Icons.call)
//             ,title: Text("Call")
//         ),
//         BottomNavigationBarItem(icon: Icon(Icons.pan_tool)
//             ,title: Text("pan tool")
//         ),
//         BottomNavigationBarItem(icon: Icon(Icons.radio)
//             ,title: Text("Redio")
//         ),
//
//       ],
//           onTap: (index){
//           setState(() {
//             _currentindex=index;
//           });
//     },
//       ),
//       body: pages[_currentindex]
//     );
//   }
// }
// TabBar flutter
// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:  DefaultTabController(length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           bottom: TabBar(
//               tabs: [
//             Tab(icon: Icon(Icons.camera_alt),),
//             Tab(icon: Icon(Icons.message),),
//           ]),
//         ),
//         body: TabBarView(children: [
//           Page1(),
//         Page2()
//         ]),
//       )
//       ),
//     );
//   }
// }

//Curved navigation bar flutter
// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//       home: BottomNavBar(),
//     );
//   }
// }
// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({Key? key}) : super(key: key);
//
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   var _page =0;
//   final pages =[
//     Page1(),
//     Page2(),
//     Page3(),
//     page4(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: CurvedNavigationBar(
//         index: 0,
//           color: Colors.white,
//           buttonBackgroundColor: Colors.white,
//           backgroundColor: Colors.blue,
//           animationCurve: Curves.easeInOut,
//           animationDuration: Duration(milliseconds: 600),
//           onTap: (index){
//           setState(() {
//             _page = index;
//           });
//           },
//           items: [
//         Icon(Icons.access_alarm),
//         Icon(Icons.accessible),
//         Icon(Icons.add_call),
//         Icon(Icons.favorite_border),
//       ]),
//       body: pages[_page],
//     );
//   }
// }

//Custom Dialog in flutter
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: RaisedButton(onPressed: () {
//           showDialog(
//               context: context,
//               builder: (context) {
//                 return Dialog(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(21)),
//                   ),
//                   child: Stack(
//                     alignment: Alignment.topCenter,
//                     overflow: Overflow.visible,
//                     children: [
//                       Container(
//                         height: 250,
//                         width: 250,
//                         child: Padding(
//                           padding: const EdgeInsets.all(20.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//
//                               SizedBox(
//                                 height: 50,
//                               ),
//                               new Text(
//                                 'Alert Dialog',
//                                 textAlign: TextAlign.left,
//                                 style: TextStyle(
//                                     color: Color.fromRGBO(0, 0, 0, 1),
//                                     fontFamily: 'Poppins',
//                                     fontSize: 23,
//                                     letterSpacing:
//                                     0 /*percentages not used in flutter. defaulting to zero*/,
//                                     fontWeight: FontWeight.normal,
//                                     height: 1),
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               new Text(
//                                 'This is Alert Dialog. Alert dialog is very useful and easy to use. User get alert doing any importent oparation.',
//                                 textAlign: TextAlign.left,
//                                 style: TextStyle(
//                                     color: Color.fromRGBO(0, 0, 0, 1),
//                                     fontFamily: 'Poppins',
//                                     fontSize: 18,
//                                     letterSpacing:
//                                     0 /*percentages not used in flutter. defaulting to zero*/,
//                                     fontWeight: FontWeight.normal,
//                                     height: 1),
//                               ),
//
//                             ],
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         top: -50,
//                           child: CircleAvatar(
//                         radius: 50,
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.all(Radius.circular(30)),
//                                 child: Image.asset("images/unsplash_Ft4p5E9HjTQ.png")),
//                       ))
//                     ],
//                   ),
//                 );
//               });
//         }),
//       ),
//     );
//   }
// }

//Snackbar in flutter
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Builder(
//           builder: (BuildContext con){
//             return RaisedButton(
//               onPressed: () {
//                 Scaffold.of(con).showSnackBar(SnackBar(
//                   content: Text("I am snackbar"),
//                   duration: Duration(seconds: 10),
//                   // backgroundColor: Colors.blue,
//                   action: SnackBarAction(label: "ok", onPressed: (){}),
//                 ));
//               },
//               child: Text("Click"),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

//Toast in flutter
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: RaisedButton(
//           onPressed: () {
//             Fluttertoast.showToast(msg: "mahim",
//                 toastLength: Toast.LENGTH_LONG,
//                   backgroundColor: Colors.red,
//                   textColor: Colors.white,
//                     gravity: ToastGravity.BOTTOM);
//           },
//           child: Text("Click"),
//         ),
//       ),
//     );
//   }
// }

//Slider in flutter
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   var _value = 10.0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text("Mahim Khan",style: TextStyle(fontSize: _value),),
//           SizedBox(
//             height: 50,
//           ),
//           Slider(
//             min: 10,
//               max: 50,
//               value: _value, onChanged: (value){
//               setState(() {
//                 _value=value;
//                 print(_value);
//               });
//           })
//         ],
//       ),
//     );
//   }
// }
//RichText in flutter
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: RichText(text: TextSpan(
//           text: "Mahim khan ? ",style: TextStyle(fontSize: 20,color: Colors.black,fontStyle: FontStyle.italic ),
//             children: [
//               TextSpan(
//                 text: "Subscribe",style: TextStyle(fontSize: 25,color: Colors.green)
//               )
//             ]
//         )),
//       ),
//     );
//   }
// }

// Flutter dropdown button
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   var selected = "Choose";
//   var value =0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(selected,style: TextStyle(fontSize: 60),),
//           DropdownButton<String>(
//             iconSize: 40,
//               items: [
//             DropdownMenuItem(
//               value: "Easy",
//                 child: Text("Easy")),
//             DropdownMenuItem(
//               value: "Explanation",
//                 child: Text("Explanation")),
//           ], onChanged: (str){
//             setState(() {
//               selected=str!;//string can go to string only not object
//             });
//           })
//         ],
//       ),
//       ),
//     );
//   }
// }
